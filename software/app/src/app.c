#include "app.h"

#include "xparameters.h"
#include "xgpio.h"
#include "xil_printf.h"
#include <xstatus.h>

#include "sleep.h"

XGpio Gpio_Instance;

int app_initialize(){
    int status = XST_SUCCESS;
    
    // Initialize I2C
    xil_printf("Initializing I2C... ");
    
    
    
    xil_printf("I2C Initialized!\r\n");
    
    // Initialize and set GPIO
    xil_printf("Initializing GPIO... ");
    XGpio_Config *gpioConfig;
    gpioConfig = XGpio_LookupConfig(XPAR_AXI_GPIO_0_BASEADDR);
    if(gpioConfig == NULL){
        return XST_FAILURE;
    }
    
    status = XGpio_CfgInitialize(&Gpio_Instance, gpioConfig, gpioConfig->BaseAddress);
    if(status != XST_SUCCESS){
        return XST_FAILURE;
    }

    XGpio_SetDataDirection(&Gpio_Instance, 1, 0xC);
    XGpio_DiscreteWrite(&Gpio_Instance, 1, 0x0);
    
    counter_reset();

    xil_printf("GPIO Initialized!\r\n");
    
    xil_printf("Application initialized!\r\n");

    return status;
}

void counter_enable(){
    XGpio_DiscreteSet(&Gpio_Instance, 1, GPIO_MASK_COUNTER_EN);

    xil_printf("Counter enabled\r\n");
}

void counter_disable(){
    XGpio_DiscreteClear(&Gpio_Instance, 1, GPIO_MASK_COUNTER_EN);

    xil_printf("Counter disabled\r\n");
}

void counter_reset(){
    XGpio_DiscreteClear(&Gpio_Instance, 1, GPIO_MASK_COUNTER_RESETN);

    usleep(500);

    XGpio_DiscreteSet(&Gpio_Instance, 1, GPIO_MASK_COUNTER_RESETN);

    xil_printf("Counter reset\r\n");
}