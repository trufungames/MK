#include "common.h"

void showMessage(char* message)
{
    js_r_textbuffer = message;
    jsfDebugMessage();
}

void showMessageInt(char* msg, int intMessage)
{
    js_r_textbuffer = ee_printf("%s: %d", msg, intMessage);
    jsfDebugMessage();
}

void showMessageBool(char* msg, bool boolMessage)
{
    js_r_textbuffer = ee_printf("%s: %d", msg, boolMessage);
    jsfDebugMessage();
}