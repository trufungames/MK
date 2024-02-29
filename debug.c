#include "common.h"

void showMessage(char* message)
{
    js_r_textbuffer = message;
    jsfDebugMessage();
}