#include "common.h"
#include "spriteanimator.h"
#include "spritemovements.h"
#include "sound.h"
#include "debug.h"
#include "spritedelay.h"
#include "screenmachine.h"

void screenMachineAdd(struct ScreenMachine* screenMachine, short name, struct Screen* screen)
{
    screen->name = name;
    screenMachine->screens[name] = screen;
};

void screenMachineInit(struct ScreenMachine* screenMachine, short name)
{
    screenMachine->currentScreen = name;
    screenMachine->screens[screenMachine->currentScreen]->enter(screenMachine);
}

void screenMachineUpdate(struct ScreenMachine* screenMachine, struct SoundHandler* soundHandler)
{
    screenMachine->screens[screenMachine->currentScreen]->update(screenMachine, soundHandler);
}

void screenMachineGoto(struct ScreenMachine* screenMachine, short newScreen)
{
    //if we're already at the current screen, let's bail.
    if (screenMachine->currentScreen == newScreen)
        return;

    screenMachineInit(screenMachine, newScreen);
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// PREALPHA
// vars[0] rapTicks
// vars[1] fadedIn
// vars[2] fadedOut

void ScreenPrealpha_Enter(struct ScreenMachine* screenMachine)
{
    screenMachine->vars[0] = rapTicks;
    screenMachine->vars[1] = 0;
    screenMachine->vars[2] = 0;
    rapParticleClear();
	rapUnpack(BMP_PREALPHA,(int)(int*)imageBuffer320x240);
	sprite[BACKGROUND16].gfxbase=(int)imageBuffer320x240;
	sprite[BACKGROUND16].active=R_is_active;
	sprite[BACKGROUND].active=R_is_inactive;
}

void ScreenPrealpha_Update(struct ScreenMachine* screenMachine, struct SoundHandler* soundHandler)
{
    pad1 = jsfGetPadPressed(LEFT_PAD);
    pad2 = jsfGetPadPressed(RIGHT_PAD);

    if (screenMachine->vars[1] == 0)
    {
        screenMachine->vars[1] = 1;

        for (int i = 0; i < 80; i++)
        {
            rapFadeClut(0,256,(int *)(int)(void *)(BMP_PREALPHA_clut));
            jsfVsync(0); 
        }

        sfxAnnouncerExcellent(soundHandler);
        
        rapUse8x16fontPalette(15);
        jsfSetFontSize(1);
        jsfSetFontIndx(1);
        rapLocate(108,8);
        js_r_textbuffer="MORTAL KOMBAT";
        rapPrint();
        jsfSetFontIndx(0);
        rapLocate(94,24);
        js_r_textbuffer="ALPHA V0.5.0";
        rapPrint();
        jsfSetFontIndx(1);
        rapLocate(88, 110);
        js_r_textbuffer="BUGS         FEEDBACK";
        rapPrint();

        rapUse8x8fontPalette(15);
        jsfSetFontSize(0);
        jsfSetFontIndx(0);
        rapLocate(10, 128);
        js_r_textbuffer="PATREON SUPPORTERS, THIS PRE-ALPHA";
        rapPrint();
        rapLocate(10, 138);
        js_r_textbuffer="BUILD INCLUDES THE 7 ORIGINAL FIGHTERS";
        rapPrint();
        rapLocate(10, 148);
        js_r_textbuffer="AND A BASIC MOVESET - NO SPECIAL MOVES";
        rapPrint();
        rapLocate(10, 158);
        js_r_textbuffer="OR FATALITIES. YES, THERE ARE BUGS AND";
        rapPrint();
        rapLocate(10, 168);
        js_r_textbuffer="SOME THINGS ARE A LITTLE ROUGH AROUND";
        rapPrint();
        rapLocate(10, 178);
        js_r_textbuffer="THE EDGES. PLEASE USE THE LINKS ABOVE";
        rapPrint();
        rapLocate(10, 188);
        js_r_textbuffer="TO REPORT BUGS AND PROVIDE FEEDBACK.";
        rapPrint();
        rapLocate(10, 198);
        js_r_textbuffer="THANKS FOR PLAYING!!";
        rapPrint();
    }

    if (screenMachine->vars[1] == 1 && screenMachine->vars[2] == 0)
    {
        if (rapTicks > screenMachine->vars[0] + (60*4) && ((pad1 & JAGPAD_C) || (pad1 & JAGPAD_B) || (pad1 & JAGPAD_A) || (pad1 & JAGPAD_OPTION) || (pad2 & JAGPAD_C) || (pad2 & JAGPAD_B) || (pad2 & JAGPAD_A) || (pad2 & JAGPAD_OPTION))
            || rapTicks > screenMachine->vars[0] + (60*20))
        {
            for (int i = 0; i < 90; i++)
            {
                rapFadeClut(0,256,BLACKPAL);
                jsfVsync(0);
            }

            screenMachine->vars[2] = 1;
            screenMachineGoto(screenMachine, SCREEN_TRUFUN);
        }
    }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// TRUFUN
// vars[0] rapTicks
// vars[1] fadedIn
// vars[2] fadedOut

void ScreenTrufun_Enter(struct ScreenMachine* screenMachine)
{
    screenMachine->vars[0] = rapTicks;
    screenMachine->vars[1] = 0;
    screenMachine->vars[2] = 0;
    rapParticleClear();
	rapUnpack(BMP_TRUFUN,(int)(int*)imageBuffer320x240);
	sprite[BACKGROUND].gfxbase=(int)imageBuffer320x240;
	sprite[BACKGROUND].active=R_is_active;
	sprite[BACKGROUND16].active=R_is_inactive;
}

void ScreenTrufun_Update(struct ScreenMachine* screenMachine, struct SoundHandler* soundHandler)
{
    if (screenMachine->vars[1] == 0)
    {
        screenMachine->vars[1] = 1;

        sfxTruFun(soundHandler);

        for (int i = 0; i < 80; i++)
        {
            rapFadeClut(0,256,(int *)(int)(void *)(BMP_TRUFUN_clut));
            jsfVsync(0); 
        }
    }

    if (screenMachine->vars[1] == 1 && screenMachine->vars[2] == 0)
    {
        if (rapTicks > screenMachine->vars[0] + (60*5))
        {
            for (int i = 0; i < 90; i++)
            {
                rapFadeClut(0,256,BLACKPAL);
                jsfVsync(0);
            }

            screenMachine->vars[2] = 1;
            screenMachineGoto(screenMachine, SCREEN_TITLE_SCREEN);
        }
    }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// TITLE SCREEN
// vars[0] rapTicks
// vars[1] fadedIn
// vars[2] fadedOut

void ScreenTitleScreen_Enter(struct ScreenMachine* screenMachine)
{
    screenMachine->vars[0] = rapTicks;
    screenMachine->vars[1] = 0;
    screenMachine->vars[2] = 0;
}

void ScreenTitleScreen_Update(struct ScreenMachine* screenMachine, struct SoundHandler* soundHandler)
{
    if (screenMachine->vars[1] == 0)
    {
        screenMachine->vars[1] = 1;
        for (int i = 0; i < 80; i++)
        {
            rapFadeClut(0,256,(int *)(int)(void *)(BMP_TITLESCREEN_clut));
            jsfVsync(0); 
        }
        
        sfxIntro(soundHandler);
    }

    if (screenMachine->vars[1] == 1 && screenMachine->vars[2] == 0)
    {
        if (rapTicks > screenMachine->vars[0] + 240)
        {
            for (int i = 0; i < 90; i++)
            {
                rapFadeClut(0,256,BLACKPAL);
                jsfVsync(0);
            }

            screenMachine->vars[2] = 1;
            screenMachineGoto(screenMachine, SCREEN_MAIN_MENU);
        }
    }
}