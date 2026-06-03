#include "app.h"

#include "xparameters.h"
#include "xgpio.h"
#include "xiic.h"
#include "xscugic.h"
#include "xil_printf.h"
#include "xil_types.h"
#include <xiic_l.h>
#include <xil_io.h>
#include <xstatus.h>

#include "sleep.h"

#define CMPS2_ADDR 0x30

XScuGic Intc;
XGpio Gpio_Instance;
XIic Iic_Instance;

int app_initialize(){
    int status = XST_SUCCESS;
    
    // Initialize system interrupts
    XScuGic_Config *intcConfig;
    intcConfig = XScuGic_LookupConfig(XPAR_INTC_BASEADDR);
	if (NULL == intcConfig) {
		return XST_FAILURE;
	}

	status = XScuGic_CfgInitialize(&Intc, intcConfig, intcConfig->CpuBaseAddress);
	if (status != XST_SUCCESS) {
		return XST_FAILURE;
	}
    
    // Initialize I2C
    xil_printf("Initializing I2C... ");
    
    XIic_Config *iicConfig;
    iicConfig = XIic_LookupConfig(XPAR_AXI_IIC_0_BASEADDR);
    if(iicConfig == NULL){
        return XST_FAILURE;
    }
    
    status = XIic_CfgInitialize(&Iic_Instance, iicConfig, iicConfig->BaseAddress);
    if(status != XST_SUCCESS){
        return XST_FAILURE;
    }

    xil_printf("Success!\r\n");
    
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

    xil_printf("Success!\r\n");
    
    counter_reset();
    
    // Initialize the PMOD compass
    xil_printf("Initializing PMOD Compass... ");
    
    status = compass_init();
    if(status != XST_SUCCESS){
        return XST_FAILURE;
    }

    xil_printf("Success!\r\n");
    
    // Finished initialization
    
    xil_printf("\r\nApplication initialized!\r\n\r\n");

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

int compass_init(){
    
    //XIic_SetAddress(&Iic_Instance, XII_ADDR_TO_SEND_TYPE, CMPS2_ADDR);

    u8 buf[2] = {0x07, 0x02};
    XIic_Send(Iic_Instance.BaseAddress, CMPS2_ADDR, buf, 2, XIIC_STOP);
    while(XIic_IsIicBusy(&Iic_Instance)){}

    return 0;
}

void compass_read(){
    s16 X, Y, Z;

    XIic_SetAddress(&Iic_Instance, XII_ADDR_TO_SEND_TYPE, CMPS2_ADDR);
    
    u8 buf[6];

    for(u8 i = 0; i < 6; i++){
        XIic_Send(Iic_Instance.BaseAddress, CMPS2_ADDR, &i, 1, XIIC_REPEATED_START);
        
        XIic_Recv(Iic_Instance.BaseAddress, CMPS2_ADDR, buf + i, 1, XIIC_STOP);
    }

    X = buf[1];
    X = (X << 8) + buf[0];

    Y = buf[3];
    Y = (X << 8) + buf[2];

    Z = buf[5];
    Z = (X << 8) + buf[4];

    xil_printf("X = %d, Y = %d, Z = %d\n\r", X, Y, Z);
}