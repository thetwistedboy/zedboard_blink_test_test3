#include "embedded_cli.h"

int cli_initialize(void);
int cli_process(void);
int cli_readChar(void);
void cli_writeChar(EmbeddedCli *cli, char c);