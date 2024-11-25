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

void printMessageInt(char* msg, int intMessage, int x, int y)
{
    rapUse8x8fontPalette(10);
	jsfSetFontSize(0);
	jsfSetFontIndx(1);
	rapLocate(x, y);
	js_r_textbuffer=ee_printf("%s %d", msg, intMessage);
	rapPrint();
}