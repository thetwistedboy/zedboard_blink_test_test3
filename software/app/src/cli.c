#include "cli.h"

#include "xparameters.h"
#include "xuartps.h"
#include "xil_printf.h"
#include "xil_types.h"
#include "xuartps_hw.h"

#include <string.h>
#include <xstatus.h>

#include "app.h"

#define EMBEDDED_CLI_IMPL
#include "embedded_cli.h"

#define CLI_BUFFER_SIZE 2048

EmbeddedCli *cli_Instance;
XUartPs Uart_Instance;

// CLI callback functions
static void cli_idn(EmbeddedCli *cli, char *args, void *context){
    (void) cli;
    (void) args;
    (void) context;
    
    xil_printf("I am a Zynq7000!\n\r");
    
    return;
}

static void cli_counter(EmbeddedCli *cli, char *args, void *context){
    (void) cli;
    (void) context;

    int argCount = embeddedCliGetTokenCount(args);

    if(argCount != 1){
        xil_printf("Incorrect number of arguments!\n\r");
        return;
    }
    const char *arg = embeddedCliGetToken(args, 1);
    if(!strcmp(arg, "on")){
        counter_enable();
    } else if(!strcmp(arg, "off")){
        counter_disable();
    } else if(!strcmp(arg, "rst")){
        counter_reset();
    } else {
        xil_printf("Invalid argument!\n\r");
    }
    
    return;
}

static void cli_compass(EmbeddedCli *cli, char *args, void *context){
    (void) cli;
    (void) context;
    
    int argCount = embeddedCliGetTokenCount(args);

    if(argCount != 0){
        xil_printf("Incorrect number of arguments!\n\r");
        return;
    }
    
    compass_read();    

    return;
}

// CLI call back command definitions and bindings
static CliCommandBinding cliCommands[] = {
    {
        .name           = "idn",                // command name (spaces are not allowed)
        .help           = "Get ID info",        // Optional help for a command (NULL for no help)
        .tokenizeArgs   = false,                // flag whether to tokenize arguments (see below)
        .context        = NULL,                 // optional pointer to any application context
        .binding        = cli_idn               // binding function 
    },
    {
        .name           = "counter",
        .help           = "Controls counter: counter <on|off|rst>",
        .tokenizeArgs   = true,
        .context        = NULL,
        .binding        = cli_counter
    },
    {
        .name           = "compass",
        .help           = "Queries compass: Gets X, Y, Z",
        .tokenizeArgs   = true,
        .context        = NULL,
        .binding        = cli_compass
    }
};


// Administrative functions, initialization and implementation of cli interface
static int cli_registerCommands(){
    int status = 0;
    
    for(unsigned long i = 0; i < sizeof(cliCommands)/sizeof(cliCommands[0]); i++){
        embeddedCliAddBinding(cli_Instance, cliCommands[i]);
    }

    return status;
}

int cli_initialize(){
    int status;
    
    xil_printf("Initializing CLI... ");
    
    //Initialize UART
    
    XUartPs_Config *uartConfig;
    uartConfig = XUartPs_LookupConfig(XPAR_UART1_BASEADDR);
    if(uartConfig == NULL){
        return XST_FAILURE;
    }
    
    status = XUartPs_CfgInitialize(&Uart_Instance, uartConfig, uartConfig->BaseAddress);
    if(status != XST_SUCCESS){
        return XST_FAILURE;
    }

    XUartPs_SetBaudRate(&Uart_Instance, 115200);

    // Initialize CLI    
    
    static CLI_UINT cliBuffer[BYTES_TO_CLI_UINTS(CLI_BUFFER_SIZE)] = {'\0'};
    
    EmbeddedCliConfig *cliConfig = embeddedCliDefaultConfig();
    cliConfig->maxBindingCount = sizeof(cliCommands)/sizeof(cliCommands[0]) + 1;
    cliConfig->cliBuffer = cliBuffer;
    cliConfig->cliBufferSize = CLI_BUFFER_SIZE;
    
    cli_Instance = embeddedCliNew(cliConfig);
    cli_Instance->writeChar = cli_writeChar;
    
    cli_registerCommands();

    xil_printf("Success!\n\r");

    return 0;
}

int cli_process(){
    embeddedCliProcess(cli_Instance);

    return 0;
}

int cli_readChar(){
    static char c;
    
    // Check if a character needs to be read, if not return 0
    // Store character in the Embedded-cli buffer
    if(XUartPs_IsReceiveData(Uart_Instance.Config.BaseAddress)){
        c = (char) XUartPs_RecvByte(Uart_Instance.Config.BaseAddress);
        embeddedCliReceiveChar(cli_Instance, c);
    } else {
        return 0;
    }

    // Return 1 to indicate to check for another character
    return 1;
}

void cli_writeChar(EmbeddedCli *cli, char c){
    (void) cli;
    XUartPs_SendByte(Uart_Instance.Config.BaseAddress, (u8) c);
}