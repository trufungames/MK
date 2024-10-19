
#include "common.h"
#include "sound.h"

void sfxFight(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);
	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_FIGHT, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_FIGHT, 8000);
}

void sfxJohnnyCage(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);
	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_CAGE, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_CAGE, 8000);
}

void sfxKano(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);
	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_KANO, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_KANO, 8000);
}

void sfxRaiden(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);
	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_RAIDEN, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_RAIDEN, 8000);
}

void sfxLiuKang(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);
	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_KANG, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_KANG, 8000);
}

void sfxScorpion(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);
	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_SCORPION, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_SCORPION, 8000);
}

void sfxSubzero(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);
	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_SUBZERO, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_SUBZERO, 8000);
}

void sfxSonya(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);
	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_SONYA, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_SONYA, 8000);
}

void sfxKasumi(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);
	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_KASUMI, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_KASUMI, 8000);
}

void sfxP1Cursor(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);
	u235PlaySampleFreq(soundGetChannel(soundHandler),SOUND_P1CURSOR,8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1,SOUND_P1CURSOR,8000);
}

void sfxP2Cursor(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);
	u235PlaySampleFreq(soundGetChannel(soundHandler),SOUND_P2CURSOR,8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1,SOUND_P2CURSOR,8000);
}

void sfxGong(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);
	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_GONG, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_GONG, 8000);
}

void sfxIntro(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);
	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_INTRO, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_INTRO, 8000);
}

void sfxPitFall(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);
	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_PIT_FALL, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_PIT_FALL, 8000);
}

void sfxPitLand(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);
	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_PIT_LAND, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_PIT_LAND, 8000);
}

void sfxHiyaMale(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);

	if (rapRND() & 255 > 100)
	{
		u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_HIYA_MALE1, 8000);
		u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_HIYA_MALE1, 8000);
	}
	else
	{
		u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_HIYA_MALE2, 8000);
		u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_HIYA_MALE2, 8000);
	}
}

void sfxHiyaFemale(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);

	if (rapRND() & 255 > 100)
	{
		u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_HIYA_FEMALE1, 8000);
		u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_HIYA_FEMALE1, 8000);
	}
	else
	{
		u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_HIYA_FEMALE2, 8000);
		u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_HIYA_FEMALE2, 8000);
	}
}

void sfxHiyaKang(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);

	if (rapRND() & 255 > 100)
	{
		u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_HIYA_KANG1, 8000);
		u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_HIYA_KANG1, 8000);
	}
	else
	{
		u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_HIYA_KANG2, 8000);
		u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_HIYA_KANG2, 8000);
	}
}

void sfxHiyaNinja(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);

	if (rapRND() & 255 > 100)
	{
		u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_HIYA_NINJA1, 8000);
		u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_HIYA_NINJA1, 8000);
	}
	else
	{
		u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_HIYA_NINJA2, 8000);
		u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_HIYA_NINJA2, 8000);
	}
}

void sfxBlock(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;
	
	soundNextChannel(soundHandler);

	if (rapRND() & 255 > 100)
	{
		u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_BLOCK01, 8000);
		u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_BLOCK01, 8000);
	}
	else
	{
		u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_BLOCK02, 8000);
		u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_BLOCK02, 8000);
	}
}

void sfxGroanMale(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);

	if (rapRND() & 255 > 100)
	{
		u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_GROAN_MALE01, 8000);
		u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_GROAN_MALE01, 8000);
	}
	else
	{
		u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_GROAN_MALE02, 8000);
		u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_GROAN_MALE02, 8000);
	}
}

void sfxGroanFemale(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);

	if (rapRND() & 255 > 100)
	{
		u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_GROAN_FEMALE01, 8000);
		u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_GROAN_FEMALE01, 8000);
	}
	else
	{
		u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_GROAN_FEMALE02, 8000);
		u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_GROAN_FEMALE02, 8000);
	}
}

void sfxHit(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;
	
	soundNextChannel(soundHandler);

	if (rapRND() & 255 > 100)
	{
		u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_HIT_01, 8000);
		u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_HIT_01, 8000);
	}
	else
	{
		u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_HIT_02, 8000);
		u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_HIT_02, 8000);
	}
}

void sfxImpact(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);

	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_HIT_IMPACT, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_HIT_IMPACT, 8000);
}

void sfxBlood(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);

	if (rapRND() & 255 > 100)
	{
		u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_BLOOD01, 8000);
		u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_BLOOD01, 8000);
	}
	else
	{
		u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_BLOOD02, 8000);
		u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_BLOOD02, 8000);
	}
}

void sfxSwing(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);

	if (rapRND() & 255 > 100)
	{
		u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_SWING_01, 8000);
		u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_SWING_01, 8000);
	}
	else
	{
		u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_SWING_02, 8000);
		u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_SWING_02, 8000);
	}
}

void sfxThud(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);

	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_THUD, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_THUD, 8000);
}

void sfxTruFun(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);

	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_TRUFUN, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_TRUFUN, 8000);
}

void sfxTitleRise(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;
	
	soundNextChannel(soundHandler);

	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_TITLE_RISE, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_TITLE_RISE, 8000);
}

void sfxTitleThud(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);

	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_TITLE_THUD, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_TITLE_THUD, 8000);
}

void sfxTitleStart(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);

	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_TITLE_START, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_TITLE_START, 8000);
}

void sfxYellMale(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);

	if (rapRND() & 255 > 100)
	{
		u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_YELL_MALE01, 8000);
		u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_YELL_MALE01, 8000);
	}
	else
	{
		u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_YELL_MALE02, 8000);
		u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_YELL_MALE02, 8000);
	}
}

void sfxYellFemale(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);

	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_YELL_FEMALE, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_YELL_FEMALE, 8000);
}

void sfxYellKang(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);

	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_YELL_KANG, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_YELL_KANG, 8000);
}

void sfxJumpMale(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);

	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_JUMP_MALE, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_JUMP_MALE, 8000);
}

void sfxJumpFemale(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);

	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_JUMP_FEMALE, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_JUMP_FEMALE, 8000);
}

void sfxJumpNinja(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);

	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_JUMP_NINJA, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_JUMP_NINJA, 8000);
}

void sfxThrowMale(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);

	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_THROW_MALE, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_THROW_MALE, 8000);
}

void sfxThrowFemale(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);

	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_THROW_FEMALE, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_THROW_FEMALE, 8000);
}

void sfxThrowNinja(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);

	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_THROW_NINJA, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_THROW_NINJA, 8000);
}

void sfxJumpRoll(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);

	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_JUMP_ROLL, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_JUMP_ROLL, 8000);
}

void sfxCageYeah(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);

	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_CAGE_YEAH, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_CAGE_YEAH, 8000);
}

void sfxCageGreenbolt(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);

	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_CAGE_GREENBOLT, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_CAGE_GREENBOLT, 8000);
}

void sfxKanoYell(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);

	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_KANO_YELL, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_KANO_YELL, 8000);
}

void sfxKanoKnife(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);

	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_KANO_KNIFE, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_KANO_KNIFE, 8000);
}

void sfxKanoHeartbeat(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);

	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_KANO_HEARTBEAT, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_KANO_HEARTBEAT, 8000);
}

void sfxKanoHeartrip(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);

	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_KANO_HEARTRIP, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_KANO_HEARTRIP, 8000);
}

void sfxKanoCannonBallStart(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);

	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_KANO_CANNONBALL_START, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_KANO_CANNONBALL_START, 8000);
}

void sfxKanoCannonBall(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);

	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_KANO_CANNONBALL, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_KANO_CANNONBALL, 8000);
}

void sfxSonyaRings(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);

	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_SONYA_RINGS, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_SONYA_RINGS, 8000);
}

void sfxSonyaKiss(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);

	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_SONYA_KISS, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_SONYA_KISS, 8000);
}

void sfxSubzeroFreeze(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);

	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_SUBZERO_FREEZE, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_SUBZERO_FREEZE, 8000);
}

void sfxSubzeroFreezeEnd(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);

	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_SUBZERO_FREEZE_END, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_SUBZERO_FREEZE_END, 8000);
}

void sfxSubzeroSlide(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);

	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_SUBZERO_SLIDE, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_SUBZERO_SLIDE, 8000);
}

void sfxScorpionSkull(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);

	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_SCORPION_SKULL, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_SCORPION_SKULL, 8000);
}

void sfxScorpionSkullFlame(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);

	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_SCORPION_SKULL_FLAME, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_SCORPION_SKULL_FLAME, 8000);
}

void sfxScorpionHarpoon(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);

	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_SCORPION_HARPOON, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_SCORPION_HARPOON, 8000);
}

void sfxScorpionTeleport(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);

	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_SCORPION_TELEPORT, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_SCORPION_TELEPORT, 8000);
}

void sfxScorpionGetOverHere(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);

	if (rapRND() & 255 > 125)
	{
		u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_SCORPION_COMEHERE, 8000);
		u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_SCORPION_COMEHERE, 8000);
	}
	else
	{
		u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_SCORPION_GETOVERHERE, 8000);
		u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_SCORPION_GETOVERHERE, 8000);	
	}
}

void sfxRaidenLightning(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);

	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_RAIDEN_LIGHTNING, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_RAIDEN_LIGHTNING, 8000);
}

void sfxRaidenLightningEnd(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;
	
	soundNextChannel(soundHandler);

	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_RAIDEN_LIGHTNING_END, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_RAIDEN_LIGHTNING_END, 8000);
}

void sfxRaidenTeleport(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);

	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_RAIDEN_TELEPORT, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_RAIDEN_TELEPORT, 8000);
}

void sfxRaidenTorpedo(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);

	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_RAIDEN_TORPEDO, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_RAIDEN_TORPEDO, 8000);
}

void sfxRaidenHeadZap(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);

	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_RAIDEN_HEADZAP, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_RAIDEN_HEADZAP, 8000);
}

void sfxRaidenIdleZap(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);

	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_RAIDEN_IDLE_ZAP, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_RAIDEN_IDLE_ZAP, 8000);
}

void sfxKangFlyingKick(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);

	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_KANG_FLYINGKICK, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_KANG_FLYINGKICK, 8000);
}

void sfxKanoHeadbutt(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);

	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_KANO_HEADBUTT, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_KANO_HEADBUTT, 8000);
}

void sfxKasumiFireball(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);

	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_KASUMI_FIREBALL, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_KASUMI_FIREBALL, 8000);
}

void sfxKangFatality(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);

	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_KANG_FATALITY, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_KANG_FATALITY, 8000);
}

void sfxCrowdAww(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);
	
	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_CROWD_AWW, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_CROWD_AWW, 8000);
}

void sfxCrowdClap(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);
	
	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_CROWD_CLAP, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_CROWD_CLAP, 8000);
}

void sfxFatalityGong(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);
	
	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_FATALITY_GONG, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_FATALITY_GONG, 8000);
}

void sfxFatalityScreamMale(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);
	
	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_FATALITY_SCREAM_MALE, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_FATALITY_SCREAM_MALE, 8000);
}

void sfxFatalityScreamFemale(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);
	
	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_FATALITY_SCREAM_FEMALE, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_FATALITY_SCREAM_FEMALE, 8000);
}

void sfxFatalityGroanMale(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);
	
	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_FATALITY_GROAN_MALE, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_FATALITY_GROAN_MALE, 8000);
}

void sfxFatalityGroanFemale(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);
	
	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_FATALITY_GROAN_FEMALE, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_FATALITY_GROAN_FEMALE, 8000);
}

void sfxFatalityGroanKang(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);
	
	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_FATALITY_GROAN_KANG, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_FATALITY_GROAN_KANG, 8000);
}

void sfxAnnouncerExcellent(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;
	
	soundNextChannel(soundHandler);

	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_ANNOUNCER_EXCELLENT, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_ANNOUNCER_EXCELLENT, 8000);
}

void sfxAnnouncerLaugh(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);

	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_ANNOUNCER_LAUGH, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_ANNOUNCER_LAUGH, 8000);
}

void sfxAnnouncerShowNoMercy(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);

	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_SHOWNOMERCY, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_SHOWNOMERCY, 8000);
}

void sfxFinishHer(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);

	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_FINISH_HER, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_FINISH_HER, 8000);
}

void sfxFinishHim(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);

	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_FINISH_HIM, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_FINISH_HIM, 8000);
}

void sfxWins(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);

	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_WINS, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_WINS, 8000);
}

void sfxFlawless(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;
	
	soundNextChannel(soundHandler);

	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_FLAWLESS, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_FLAWLESS, 8000);
}

void sfxFatality(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	soundNextChannel(soundHandler);

	u235PlaySampleFreq(soundGetChannel(soundHandler), SOUND_FATALITY, 8000);
	u235PlaySampleFreq(soundGetChannel(soundHandler) + 1, SOUND_FATALITY, 8000);
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

void musicStageGates(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableMusic)
		return;

	u235StopModule();
	u235Silence();
	u235PlayModule(MOD_STAGE_GATES,MOD_STEREO);
	u235ModuleVol(soundHandler->VolumeMusic);	
}

void musicStagePit(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableMusic)
		return;

	u235StopModule();
	u235Silence();
	u235PlayModule(MOD_STAGE_PIT,MOD_STEREO);
	u235ModuleVol(60);	
}

void musicStageWarrior(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableMusic)
		return;

	u235StopModule();
	u235Silence();
	u235PlayModule(MOD_STAGE_WARRIOR,MOD_STEREO);
	u235ModuleVol(soundHandler->VolumeMusic);	
}

void musicStageGoro(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableMusic)
		return;

	u235StopModule();
	u235Silence();
	u235PlayModule(MOD_STAGE_GORO,MOD_STEREO);
	u235ModuleVol(soundHandler->VolumeMusic);	
}

void musicStageThrone(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableMusic)
		return;

	u235StopModule();
	u235Silence();
	u235PlayModule(MOD_STAGE_THRONE,MOD_STEREO);
	u235ModuleVol(soundHandler->VolumeMusic);	
}

void musicStop()
{
	u235StopModule();
	u235Silence();
}

void soundNextChannel(struct SoundHandler* soundHandler)
{
	soundHandler->UsePrimaryChannel = !soundHandler->UsePrimaryChannel;
}

short soundGetChannel(struct SoundHandler* soundHandler)
{
	return soundHandler->UsePrimaryChannel ? SOUND_CHANNEL_PRIMARY_L : SOUND_CHANNEL_SECONDARY_L;
}