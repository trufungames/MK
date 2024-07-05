#include "common.h"
#include "fighter.h"
#include "debug.h"

char* hudGetString(bool isPlayer1, int hitPoints)
{
    if (isPlayer1)
    {
        switch (hitPoints)
        {
            case MAX_HEALTH:
                return (char *)"fgggggggggggggh";
            case 118:
                return (char *)"fgggggggggggggw";
            case 116:
                return (char *)"fgggggggggggggv";
            case 114:
                return (char *)"fgggggggggggggu";
            case 112:
                return (char *)"fggggggggggggge";
            case 110:
                return (char *)"fggggggggggggke";
            case 108:
                return (char *)"fggggggggggggje";
            case 106:
                return (char *)"fggggggggggggie";
            case 104:
                return (char *)"fggggggggggggbe";
            case 102:
                return (char *)"fgggggggggggkbe";
            case 100:
                return (char *)"fgggggggggggjbe";
            case 98:
                return (char *)"fgggggggggggibe";
            case 96:
                return (char *)"fgggggggggggdbe";
            case 94:
                return (char *)"fggggggggggkdbe";
            case 92:
                return (char *)"fggggggggggjdbe";
            case 90:
                return (char *)"fggggggggggidbe";
            case 88:
                return (char *)"fggggggggggcdbe";
            case 86:
                return (char *)"fgggggggggkcdbe";
            case 84:
                return (char *)"fgggggggggjcdbe";
            case 82:
                return (char *)"fgggggggggicdbe";
            case 80:
                return (char *)"fgggggggggbcdbe";
            case 78:
                return (char *)"fggggggggkbcdbe";
            case 76:
                return (char *)"fggggggggjbcdbe";
            case 74:
                return (char *)"fggggggggibcdbe";
            case 72:
                return (char *)"fggggggggdbcdbe";
            case 70:
                return (char *)"fgggggggkdbcdbe";
            case 68:
                return (char *)"fgggggggjdbcdbe";
            case 66:
                return (char *)"fgggggggidbcdbe";
            case 64:
                return (char *)"fgggggggcdbcdbe";
            case 62:
                return (char *)"fggggggkcdbcdbe";
            case 60:
                return (char *)"fggggggjcdbcdbe";
            case 58:
                return (char *)"fggggggicdbcdbe";
            case 56:
                return (char *)"fggggggbcdbcdbe";
            case 54:
                return (char *)"fgggggkbcdbcdbe";
            case 52:
                return (char *)"fgggggjbcdbcdbe";
            case 50:
                return (char *)"fgggggibcdbcdbe";
            case 48:
                return (char *)"fgggggdbcdbcdbe";
            case 46:
                return (char *)"fggggkdbcdbcdbe";
            case 44:
                return (char *)"fggggjdbcdbcdbe";
            case 42:
                return (char *)"fggggidbcdbcdbe";
            case 40:
                return (char *)"fggggcdbcdbcdbe";
            case 38:
                return (char *)"fgggkcdbcdbcdbe";
            case 36:
                return (char *)"fgggjcdbcdbcdbe";
            case 34:
                return (char *)"fgggicdbcdbcdbe";
            case 32:
                return (char *)"fgggbcdbcdbcdbe";
            case 30:
                return (char *)"fggkbcdbcdbcdbe";
            case 28:
                return (char *)"fggjbcdbcdbcdbe";
            case 26:
                return (char *)"fggibcdbcdbcdbe";
            case 24:
                return (char *)"fggdbcdbcdbcdbe";
            case 22:
                return (char *)"fgkdbcdbcdbcdbe";
            case 20:
                return (char *)"fgjdbcdbcdbcdbe";
            case 18:
                return (char *)"fgidbcdbcdbcdbe";
            case 16:
                return (char *)"fgcdbcdbcdbcdbe";
            case 14:
                return (char *)"fkcdbcdbcdbcdbe";
            case 12:
                return (char *)"fjcdbcdbcdbcdbe";
            case 10:
                return (char *)"ficdbcdbcdbcdbe";
            case 8:
                return (char *)"fbcdbcdbcdbcdbe";
            case 6:
                return (char *)"qbcdbcdbcdbcdbe";
            case 4:
                return (char *)"pbcdbcdbcdbcdbe";
            case 2:
                return (char *)"obcdbcdbcdbcdbe";
            case 0:
            default:
                return (char *)"abcdbcdbcdbcdbe";
        }
    }
    else
    {
        switch (hitPoints)
        {
            case MAX_HEALTH:
                return (char *)"fgggggggggggggh";
            case 118:
                return (char *)"zgggggggggggggh";
            case 116:
                return (char *)"ygggggggggggggh";
            case 114:
                return (char *)"xgggggggggggggh";
            case 112:
                return (char *)"agggggggggggggh";
            case 110:
                return (char *)"anggggggggggggh";
            case 108:
                return (char *)"amggggggggggggh";
            case 106:
                return (char *)"alggggggggggggh";
            case 104:
                return (char *)"abggggggggggggh";
            case 102:
                return (char *)"abngggggggggggh";
            case 100:
                return (char *)"abmgggggggggggh";
            case 98:
                return (char *)"ablgggggggggggh";
            case 96:
                return (char *)"abcgggggggggggh";
            case 94:
                return (char *)"abcnggggggggggh";
            case 92:
                return (char *)"abcmggggggggggh";
            case 90:
                return (char *)"abclggggggggggh";
            case 88:
                return (char *)"abcdggggggggggh";
            case 86:
                return (char *)"abcdngggggggggh";
            case 84:
                return (char *)"abcdmgggggggggh";
            case 82:
                return (char *)"abcdlgggggggggh";
            case 80:
                return (char *)"abcdbgggggggggh";
            case 78:
                return (char *)"abcdbnggggggggh";
            case 76:
                return (char *)"abcdbmggggggggh";
            case 74:
                return (char *)"abcdblggggggggh";
            case 72:
                return (char *)"abcdbcggggggggh";
            case 70:
                return (char *)"abcdbcngggggggh";
            case 68:
                return (char *)"abcdbcmgggggggh";
            case 66:
                return (char *)"abcdbclgggggggh";
            case 64:
                return (char *)"abcdbcdgggggggh";
            case 62:
                return (char *)"abcdbcdnggggggh";
            case 60:
                return (char *)"abcdbcdmggggggh";
            case 58:
                return (char *)"abcdbcdlggggggh";
            case 56:
                return (char *)"abcdbcdbggggggh";
            case 54:
                return (char *)"abcdbcdbngggggh";
            case 52:
                return (char *)"abcdbcdbmgggggh";
            case 50:
                return (char *)"abcdbcdblgggggh";
            case 48:
                return (char *)"abcdbcdbcgggggh";
            case 46:
                return (char *)"abcdbcdbcnggggh";
            case 44:
                return (char *)"abcdbcdbcmggggh";
            case 42:
                return (char *)"abcdbcdbclggggh";
            case 40:
                return (char *)"abcdbcdbcdggggh";
            case 38:
                return (char *)"abcdbcdbcdngggh";
            case 36:
                return (char *)"abcdbcdbcdmgggh";
            case 34:
                return (char *)"abcdbcdbcdlgggh";
            case 32:
                return (char *)"abcdbcdbcdbgggh";
            case 30:
                return (char *)"abcdbcdbcdbnggh";
            case 28:
                return (char *)"abcdbcdbcdbmggh";
            case 26:
                return (char *)"abcdbcdbcdblggh";
            case 24:
                return (char *)"abcdbcdbcdbcggh";
            case 22:
                return (char *)"abcdbcdbcdbcngh";
            case 20:
                return (char *)"abcdbcdbcdbcmgh";
            case 18:
                return (char *)"abcdbcdbcdbclgh";
            case 16:
                return (char *)"abcdbcdbcdbcdgh";
            case 14:
                return (char *)"abcdbcdbcdbcdnh";
            case 12:
                return (char *)"abcdbcdbcdbcdmh";
            case 10:
                return (char *)"abcdbcdbcdbcdlh";
            case 8:
                return (char *)"abcdbcdbcdbcdbh";
            case 6:
                return (char *)"abcdbcdbcdbcdbt";
            case 4:
                return (char *)"abcdbcdbcdbcdbs";
            case 2:
                return (char *)"abcdbcdbcdbcdbr";
            case 0:
            default:
                return (char *)"abcdbcdbcdbcdbe";
        }
    }
}

void hudUpdateHealthbar(bool isPlayer1, int hitPoints)
{
    rapUse8x8fontPalette(10);
	jsfSetFontSize(0);
	jsfSetFontIndx(1);

    if (isPlayer1)
    {
        rapLocate(26,20);
    }
    else
    {
        rapLocate(180,20);
    }

	js_r_textbuffer=hudGetString(isPlayer1, hitPoints);
	rapPrint();
}

void hudInit()
{
    hudUpdateHealthbar(true, MAX_HEALTH);
    hudUpdateHealthbar(false, MAX_HEALTH);
}

void hudUpdateFighter(struct Fighter* fighter)
{
    hudUpdateHealthbar(fighter->isPlayer1, fighter->hitPoints);
}

void hudUpdate(struct Fighter* fighter1, struct Fighter* fighter2)
{
    hudUpdateFighter(fighter1);
    hudUpdateFighter(fighter2);
}