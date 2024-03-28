
#include "common.h"
#include "sound.h"


void sfxFight(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	u235PlaySampleFreq(SOUND_CHANNEL_MISC_L, SOUND_FIGHT, 8000);
	u235PlaySampleFreq(SOUND_CHANNEL_MISC_R, SOUND_FIGHT, 8000);
}

void sfxJohnnyCage(struct SoundHandler* soundHandler, bool isPlayer1)
{
	if (!soundHandler->EnableSFX)
		return;

	u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_L, SOUND_CAGE, 8000);
	u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_R, SOUND_CAGE, 8000);
}

void sfxKano(struct SoundHandler* soundHandler, bool isPlayer1)
{
	if (!soundHandler->EnableSFX)
		return;

	u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_L, SOUND_KANO, 8000);
	u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_R, SOUND_KANO, 8000);
}

void sfxRaiden(struct SoundHandler* soundHandler, bool isPlayer1)
{
	if (!soundHandler->EnableSFX)
		return;

	u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_L, SOUND_RAIDEN, 8000);
	u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_R, SOUND_RAIDEN, 8000);
}

void sfxLiuKang(struct SoundHandler* soundHandler, bool isPlayer1)
{
	if (!soundHandler->EnableSFX)
		return;

	u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_L, SOUND_KANG, 8000);
	u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_R, SOUND_KANG, 8000);
}

void sfxScorpion(struct SoundHandler* soundHandler, bool isPlayer1)
{
	if (!soundHandler->EnableSFX)
		return;

	u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_L, SOUND_SCORPION, 8000);
	u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_R, SOUND_SCORPION, 8000);
}

void sfxSubzero(struct SoundHandler* soundHandler, bool isPlayer1)
{
	if (!soundHandler->EnableSFX)
		return;

	u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_L, SOUND_SUBZERO, 8000);
	u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_R, SOUND_SUBZERO, 8000);
}

void sfxSonya(struct SoundHandler* soundHandler, bool isPlayer1)
{
	if (!soundHandler->EnableSFX)
		return;

	u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_L, SOUND_SONYA, 8000);
	u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_R, SOUND_SONYA, 8000);
}

void sfxP1Cursor(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_L,SOUND_P1CURSOR,8000);
}

void sfxP2Cursor(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_R,SOUND_P2CURSOR,8000);
}

void sfxSelected(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	u235PlaySampleFreq(SOUND_CHANNEL_MISC_L,SOUND_SELECTED,8000);
	u235PlaySampleFreq(SOUND_CHANNEL_MISC_R,SOUND_SELECTED,8000);
}

void sfxGong(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	u235PlaySampleFreq(SOUND_CHANNEL_MISC_L, SOUND_GONG, 8000);
	u235PlaySampleFreq(SOUND_CHANNEL_MISC_R, SOUND_GONG, 8000);
}

void sfxIntro(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	u235PlaySampleFreq(SOUND_CHANNEL_MISC_L, SOUND_INTRO, 8000);
	u235PlaySampleFreq(SOUND_CHANNEL_MISC_R, SOUND_INTRO, 8000);
}

void sfxHiyaMale(struct SoundHandler* soundHandler, bool isPlayer1)
{
	if (!soundHandler->EnableSFX)
		return;

	if (rapRND() & 255 > 100)
	{
		u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_L, SOUND_HIYA_MALE1, 8000);
		u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_R, SOUND_HIYA_MALE1, 8000);
	}
	else
	{
		u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_L, SOUND_HIYA_MALE2, 8000);
		u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_R, SOUND_HIYA_MALE2, 8000);
	}
}

void sfxHiyaFemale(struct SoundHandler* soundHandler, bool isPlayer1)
{
	if (!soundHandler->EnableSFX)
		return;

	if (rapRND() & 255 > 100)
	{
		u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_L, SOUND_HIYA_FEMALE1, 8000);
		u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_R, SOUND_HIYA_FEMALE1, 8000);
	}
	else
	{
		u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_L, SOUND_HIYA_FEMALE2, 8000);
		u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_R, SOUND_HIYA_FEMALE2, 8000);
	}
}

void sfxHiyaKang(struct SoundHandler* soundHandler, bool isPlayer1)
{
	if (!soundHandler->EnableSFX)
		return;

	if (rapRND() & 255 > 100)
	{
		u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_L, SOUND_HIYA_KANG1, 8000);
		u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_R, SOUND_HIYA_KANG1, 8000);
	}
	else
	{
		u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_L, SOUND_HIYA_KANG2, 8000);
		u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_R, SOUND_HIYA_KANG2, 8000);
	}
}

void sfxHiyaNinja(struct SoundHandler* soundHandler, bool isPlayer1)
{
	if (!soundHandler->EnableSFX)
		return;

	if (rapRND() & 255 > 100)
	{
		u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_L, SOUND_HIYA_NINJA1, 8000);
		u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_R, SOUND_HIYA_NINJA1, 8000);
	}
	else
	{
		u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_L, SOUND_HIYA_NINJA2, 8000);
		u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_R, SOUND_HIYA_NINJA2, 8000);
	}
}

void sfxBlock(struct SoundHandler* soundHandler, bool isPlayer1)
{
	if (!soundHandler->EnableSFX)
		return;

	if (rapRND() & 255 > 100)
	{
		u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_L, SOUND_BLOCK01, 8000);
		u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_R, SOUND_BLOCK01, 8000);
	}
	else
	{
		u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_L, SOUND_BLOCK02, 8000);
		u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_R, SOUND_BLOCK02, 8000);
	}
}

void sfxGroanMale(struct SoundHandler* soundHandler, bool isPlayer1)
{
	if (!soundHandler->EnableSFX)
		return;

	if (rapRND() & 255 > 100)
	{
		u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_L, SOUND_GROAN_MALE01, 8000);
		u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_R, SOUND_GROAN_MALE01, 8000);
	}
	else
	{
		u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_L, SOUND_GROAN_MALE02, 8000);
		u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_R, SOUND_GROAN_MALE02, 8000);
	}
}

void sfxGroanFemale(struct SoundHandler* soundHandler, bool isPlayer1)
{
	if (!soundHandler->EnableSFX)
		return;

	if (rapRND() & 255 > 100)
	{
		u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_L, SOUND_GROAN_FEMALE01, 8000);
		u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_R, SOUND_GROAN_FEMALE01, 8000);
	}
	else
	{
		u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_L, SOUND_GROAN_FEMALE02, 8000);
		u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_R, SOUND_GROAN_FEMALE02, 8000);
	}
}

void sfxHit(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	if (rapRND() & 255 > 100)
	{
		u235PlaySampleFreq(SOUND_CHANNEL_MISC_L, SOUND_HIT_01, 8000);
		u235PlaySampleFreq(SOUND_CHANNEL_MISC_R, SOUND_HIT_01, 8000);
	}
	else
	{
		u235PlaySampleFreq(SOUND_CHANNEL_MISC_L, SOUND_HIT_02, 8000);
		u235PlaySampleFreq(SOUND_CHANNEL_MISC_R, SOUND_HIT_02, 8000);
	}
}

void sfxImpact(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	u235PlaySampleFreq(SOUND_CHANNEL_MISC_L, SOUND_HIT_IMPACT, 8000);
	u235PlaySampleFreq(SOUND_CHANNEL_MISC_R, SOUND_HIT_IMPACT, 8000);
}

void sfxBlood(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	if (rapRND() & 255 > 100)
	{
		u235PlaySampleFreq(SOUND_CHANNEL_MISC_L, SOUND_BLOOD01, 8000);
		u235PlaySampleFreq(SOUND_CHANNEL_MISC_R, SOUND_BLOOD01, 8000);
	}
	else
	{
		u235PlaySampleFreq(SOUND_CHANNEL_MISC_L, SOUND_BLOOD02, 8000);
		u235PlaySampleFreq(SOUND_CHANNEL_MISC_R, SOUND_BLOOD02, 8000);
	}
}

void sfxSwing(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	if (rapRND() & 255 > 100)
	{
		u235PlaySampleFreq(SOUND_CHANNEL_MISC_L, SOUND_SWING_01, 8000);
		u235PlaySampleFreq(SOUND_CHANNEL_MISC_R, SOUND_SWING_01, 8000);
	}
	else
	{
		u235PlaySampleFreq(SOUND_CHANNEL_MISC_L, SOUND_SWING_02, 8000);
		u235PlaySampleFreq(SOUND_CHANNEL_MISC_R, SOUND_SWING_02, 8000);
	}
}

void sfxThud(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	u235PlaySampleFreq(SOUND_CHANNEL_MISC_L, SOUND_THUD, 8000);
	u235PlaySampleFreq(SOUND_CHANNEL_MISC_R, SOUND_THUD, 8000);
}

void sfxTruFun(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	u235PlaySampleFreq(SOUND_CHANNEL_MISC_L, SOUND_TRUFUN, 8000);
	u235PlaySampleFreq(SOUND_CHANNEL_MISC_R, SOUND_TRUFUN, 8000);
}

void sfxYellMale(struct SoundHandler* soundHandler, bool isPlayer1)
{
	if (!soundHandler->EnableSFX)
		return;

	if (rapRND() & 255 > 100)
	{
		u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_L, SOUND_YELL_MALE01, 8000);
		u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_R, SOUND_YELL_MALE01, 8000);
	}
	else
	{
		u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_L, SOUND_YELL_MALE02, 8000);
		u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_R, SOUND_YELL_MALE02, 8000);
	}
}

void sfxYellFemale(struct SoundHandler* soundHandler, bool isPlayer1)
{
	if (!soundHandler->EnableSFX)
		return;

	u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_L, SOUND_YELL_FEMALE, 8000);
	u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_R, SOUND_YELL_FEMALE, 8000);
}

void sfxYellKang(struct SoundHandler* soundHandler, bool isPlayer1)
{
	if (!soundHandler->EnableSFX)
		return;

	u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_L, SOUND_YELL_KANG, 8000);
	u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_R, SOUND_YELL_KANG, 8000);
}

void sfxJumpMale(struct SoundHandler* soundHandler, bool isPlayer1)
{
	if (!soundHandler->EnableSFX)
		return;

	u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_L, SOUND_JUMP_MALE, 8000);
	u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_R, SOUND_JUMP_MALE, 8000);
}

void sfxJumpFemale(struct SoundHandler* soundHandler, bool isPlayer1)
{
	if (!soundHandler->EnableSFX)
		return;

	u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_L, SOUND_JUMP_FEMALE, 8000);
	u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_R, SOUND_JUMP_FEMALE, 8000);
}

void sfxJumpNinja(struct SoundHandler* soundHandler, bool isPlayer1)
{
	if (!soundHandler->EnableSFX)
		return;

	u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_L, SOUND_JUMP_NINJA, 8000);
	u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_R, SOUND_JUMP_NINJA, 8000);
}

void sfxThrowMale(struct SoundHandler* soundHandler, bool isPlayer1)
{
	if (!soundHandler->EnableSFX)
		return;

	u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_L, SOUND_THROW_MALE, 8000);
	u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_R, SOUND_THROW_MALE, 8000);
}

void sfxThrowFemale(struct SoundHandler* soundHandler, bool isPlayer1)
{
	if (!soundHandler->EnableSFX)
		return;

	u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_L, SOUND_THROW_FEMALE, 8000);
	u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_R, SOUND_THROW_FEMALE, 8000);
}

void sfxThrowNinja(struct SoundHandler* soundHandler, bool isPlayer1)
{
	if (!soundHandler->EnableSFX)
		return;

	u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_L, SOUND_THROW_NINJA, 8000);
	u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_R, SOUND_THROW_NINJA, 8000);
}

void sfxJumpRoll(struct SoundHandler* soundHandler, bool isPlayer1)
{
	if (!soundHandler->EnableSFX)
		return;

	u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_L, SOUND_JUMP_ROLL, 8000);
	u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_R, SOUND_JUMP_ROLL, 8000);
}

void sfxCageYeah(struct SoundHandler* soundHandler, bool isPlayer1)
{
	if (!soundHandler->EnableSFX)
		return;

	u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_L, SOUND_CAGE_YEAH, 8000);
	u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_R, SOUND_CAGE_YEAH, 8000);
}

void sfxKanoYell(struct SoundHandler* soundHandler, bool isPlayer1)
{
	if (!soundHandler->EnableSFX)
		return;

	u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_L, SOUND_KANO_YELL, 8000);
	u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_R, SOUND_KANO_YELL, 8000);
}

void sfxKanoHeadbutt(struct SoundHandler* soundHandler, bool isPlayer1)
{
	if (!soundHandler->EnableSFX)
		return;

	u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_L, SOUND_KANO_HEADBUTT, 8000);
	u235PlaySampleFreq(SOUND_CHANNEL_PLAYER_R, SOUND_KANO_HEADBUTT, 8000);
}

void sfxCrowdAww(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;
	
	u235PlaySampleFreq(SOUND_CHANNEL_MISC_L, SOUND_CROWD_AWW, 8000);
	u235PlaySampleFreq(SOUND_CHANNEL_MISC_R, SOUND_CROWD_AWW, 8000);
}

void sfxAnnouncerExcellent(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;
	
	u235PlaySampleFreq(SOUND_CHANNEL_MISC_L, SOUND_ANNOUNCER_EXCELLENT, 8000);
	u235PlaySampleFreq(SOUND_CHANNEL_MISC_R, SOUND_ANNOUNCER_EXCELLENT, 8000);
}

void sfxAnnouncerLaugh(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	u235PlaySampleFreq(SOUND_CHANNEL_MISC_L, SOUND_ANNOUNCER_LAUGH, 8000);
	u235PlaySampleFreq(SOUND_CHANNEL_MISC_R, SOUND_ANNOUNCER_LAUGH, 8000);
}

void sfxFinishHer(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	u235PlaySampleFreq(SOUND_CHANNEL_MISC_L, SOUND_FINISH_HER, 8000);
	u235PlaySampleFreq(SOUND_CHANNEL_MISC_R, SOUND_FINISH_HER, 8000);
}

void sfxFinishHim(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	u235PlaySampleFreq(SOUND_CHANNEL_MISC_L, SOUND_FINISH_HIM, 8000);
	u235PlaySampleFreq(SOUND_CHANNEL_MISC_R, SOUND_FINISH_HIM, 8000);
}

void sfxWins(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	u235PlaySampleFreq(SOUND_CHANNEL_MISC_L, SOUND_WINS, 8000);
	u235PlaySampleFreq(SOUND_CHANNEL_MISC_R, SOUND_WINS, 8000);
}

void sfxFlawless(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	u235PlaySampleFreq(SOUND_CHANNEL_MISC_L, SOUND_FLAWLESS, 8000);
	u235PlaySampleFreq(SOUND_CHANNEL_MISC_R, SOUND_FLAWLESS, 8000);
}

void sfxFatality(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	u235PlaySampleFreq(SOUND_CHANNEL_MISC_L, SOUND_FATALITY, 8000);
	u235PlaySampleFreq(SOUND_CHANNEL_MISC_R, SOUND_FATALITY, 8000);
}

void musicTitle(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableMusic)
		return;
	
	u235StopModule();
	u235Silence();
	//u235PlayModule((int)STRPTR(MOD_TITLE),MOD_STEREO);
	u235PlayModule(MOD_TITLE,MOD_STEREO);
	u235ModuleVol(soundHandler->VolumeMusic / 4);
}

void musicStage(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableMusic)
		return;

	u235StopModule();
	u235Silence();
	//u235PlayModule((int)STRPTR(MOD_STAGE),MOD_STEREO);
	u235PlayModule(MOD_STAGE,MOD_STEREO);
	u235ModuleVol(soundHandler->VolumeMusic);	
}

void musicStop()
{
	u235StopModule();
	u235Silence();
}