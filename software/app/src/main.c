#include "xparameters.h"
#include "xil_printf.h"

#include "app.h"
#include "cli.h"

int main(void){

    xil_printf("Beginning initialization...\n\r");
    
    cli_initialize();
    app_initialize();
    
    xil_printf("Initialization complete!\n\r");
    
    while(1){
        while(cli_readChar()){}
        
        cli_process();
        
    }
    return 0;
}