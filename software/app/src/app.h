

#define GPIO_MASK_COUNTER_EN        0x1
#define GPIO_MASK_COUNTER_RESETN    0x2

int app_initialize(void);

// Counter control functions
void counter_enable(void);
void counter_disable(void);
void counter_reset(void);

// CMPS control functions
int compass_init(void);
void compass_read(void);