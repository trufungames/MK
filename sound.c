
#include "common.h"
#include "sound.h"


void sfxFight(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	u235PlaySampleFreq(SOUND_CHANNEL_ANNOUNCER, SOUND_FIGHT, 8000);
	//zeroPlaySample(SOUND_CHANNEL_ANNOUNCER,STRPTR(fight_sam),(STRPTR(fight_sam_end)-STRPTR(fight_sam)+3) & 0xfffffffc,(46168/7000),Zero_Audio_8bit_Signed);
}

void sfxJohnnyCage(struct SoundHandler* soundHandler, bool isPlayer1)
{
	if (!soundHandler->EnableSFX)
		return;

	u235PlaySampleFreq(isPlayer1 ? SOUND_CHANNEL_PLAYER1 : SOUND_CHANNEL_PLAYER2, SOUND_CAGE, 8000);
	//zeroPlaySample(isPlayer1 ? SOUND_CHANNEL_PLAYER1 : SOUND_CHANNEL_PLAYER2,STRPTR(johnnycage_sam),(STRPTR(johnnycage_sam_end)-STRPTR(johnnycage_sam)+3) & 0xfffffffc,(46168/7000),Zero_Audio_8bit_Signed);
}

void sfxKano(struct SoundHandler* soundHandler, bool isPlayer1)
{
	if (!soundHandler->EnableSFX)
		return;

	u235PlaySampleFreq(isPlayer1 ? SOUND_CHANNEL_PLAYER1 : SOUND_CHANNEL_PLAYER2, SOUND_KANO, 8000);
	//zeroPlaySample(isPlayer1 ? SOUND_CHANNEL_PLAYER1 : SOUND_CHANNEL_PLAYER2,STRPTR(kano_sam),(STRPTR(kano_sam_end)-STRPTR(kano_sam)+3) & 0xfffffffc,(46168/7000),Zero_Audio_8bit_Signed);
}

void sfxRaiden(struct SoundHandler* soundHandler, bool isPlayer1)
{
	if (!soundHandler->EnableSFX)
		return;

	u235PlaySampleFreq(isPlayer1 ? SOUND_CHANNEL_PLAYER1 : SOUND_CHANNEL_PLAYER2, SOUND_RAIDEN, 8000);
	//zeroPlaySample(isPlayer1 ? SOUND_CHANNEL_PLAYER1 : SOUND_CHANNEL_PLAYER2,STRPTR(raiden_sam),(STRPTR(raiden_sam_end)-STRPTR(raiden_sam)+3) & 0xfffffffc,(46168/7000),Zero_Audio_8bit_Signed);
}

void sfxLiuKang(struct SoundHandler* soundHandler, bool isPlayer1)
{
	if (!soundHandler->EnableSFX)
		return;

	u235PlaySampleFreq(isPlayer1 ? SOUND_CHANNEL_PLAYER1 : SOUND_CHANNEL_PLAYER2, SOUND_KANG, 8000);
	//zeroPlaySample(isPlayer1 ? SOUND_CHANNEL_PLAYER1 : SOUND_CHANNEL_PLAYER2,STRPTR(liukang_sam),(STRPTR(liukang_sam_end)-STRPTR(liukang_sam)+3) & 0xfffffffc,(46168/7000),Zero_Audio_8bit_Signed);
}

void sfxScorpion(struct SoundHandler* soundHandler, bool isPlayer1)
{
	if (!soundHandler->EnableSFX)
		return;

	u235PlaySampleFreq(isPlayer1 ? SOUND_CHANNEL_PLAYER1 : SOUND_CHANNEL_PLAYER2, SOUND_SCORPION, 8000);
	//zeroPlaySample(isPlayer1 ? SOUND_CHANNEL_PLAYER1 : SOUND_CHANNEL_PLAYER2,STRPTR(scorpion_sam),(STRPTR(scorpion_sam_end)-STRPTR(scorpion_sam)+3) & 0xfffffffc,(46168/7000),Zero_Audio_8bit_Signed);
}

void sfxSubzero(struct SoundHandler* soundHandler, bool isPlayer1)
{
	if (!soundHandler->EnableSFX)
		return;

	u235PlaySampleFreq(isPlayer1 ? SOUND_CHANNEL_PLAYER1 : SOUND_CHANNEL_PLAYER2, SOUND_SUBZERO, 8000);
	//zeroPlaySample(isPlayer1 ? SOUND_CHANNEL_PLAYER1 : SOUND_CHANNEL_PLAYER2,STRPTR(subzero_sam),(STRPTR(subzero_sam_end)-STRPTR(subzero_sam)+3) & 0xfffffffc,(46168/7000),Zero_Audio_8bit_Signed);
}

void sfxSonya(struct SoundHandler* soundHandler, bool isPlayer1)
{
	if (!soundHandler->EnableSFX)
		return;

	u235PlaySampleFreq(isPlayer1 ? SOUND_CHANNEL_PLAYER1 : SOUND_CHANNEL_PLAYER2, SOUND_SONYA, 8000);
	//zeroPlaySample(isPlayer1 ? SOUND_CHANNEL_PLAYER1 : SOUND_CHANNEL_PLAYER2,STRPTR(sonya_sam),(STRPTR(sonya_sam_end)-STRPTR(sonya_sam)+3) & 0xfffffffc,(46168/7000),Zero_Audio_8bit_Signed);
}

void sfxP1Cursor(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	u235PlaySampleFreq(SOUND_CHANNEL_PLAYER1,SOUND_P1CURSOR,8000);
	//zeroPlaySample(SOUND_CHANNEL_PLAYER1,STRPTR(p1cursor_sam),(STRPTR(p1cursor_sam_end)-STRPTR(p1cursor_sam)+3) & 0xfffffffc,(46168/7000),Zero_Audio_8bit_Signed);
}

void sfxP2Cursor(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	u235PlaySampleFreq(SOUND_CHANNEL_PLAYER2,SOUND_P2CURSOR,8000);
	//zeroPlaySample(SOUND_CHANNEL_PLAYER2,STRPTR(p2cursor_sam),(STRPTR(p2cursor_sam_end)-STRPTR(p2cursor_sam)+3) & 0xfffffffc,(46168/7000),Zero_Audio_8bit_Signed);
}

void sfxSelected(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	u235PlaySampleFreq(SOUND_CHANNEL_MISC,SOUND_SELECTED,8000);
	//zeroPlaySample(SOUND_CHANNEL_MISC,STRPTR(p2selected_sam),(STRPTR(p2selected_sam_end)-STRPTR(p2selected_sam)+3) & 0xfffffffc,(46168/7000),Zero_Audio_8bit_Signed);
}

void sfxGong(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	u235PlaySampleFreq(SOUND_CHANNEL_MISC, SOUND_GONG, 8000);
	//zeroPlaySample(SOUND_CHANNEL_MISC,STRPTR(gong_sam),(STRPTR(gong_sam_end)-STRPTR(gong_sam)+3) & 0xfffffffc,(46168/7000),Zero_Audio_8bit_Signed);
}

void sfxIntro(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	u235PlaySampleFreq(SOUND_CHANNEL_MISC, SOUND_INTRO, 8000);
	//zeroPlaySample(SOUND_CHANNEL_MISC,STRPTR(intro_sam),(STRPTR(intro_sam_end)-STRPTR(intro_sam)+3) & 0xfffffffc,(46168/7000),Zero_Audio_8bit_Signed);
}

void sfxHiyaMale(struct SoundHandler* soundHandler, bool isPlayer1)
{
	if (!soundHandler->EnableSFX)
		return;

	if (rapRND() & 255 > 100)
	{
		u235PlaySampleFreq(isPlayer1 ? SOUND_CHANNEL_PLAYER1 : SOUND_CHANNEL_PLAYER2, SOUND_HIYA_MALE1, 8000);
		//zeroPlaySample(isPlayer1 ? SOUND_CHANNEL_PLAYER1 : SOUND_CHANNEL_PLAYER2,STRPTR(hiya_male1_sam),(STRPTR(hiya_male1_sam_end)-STRPTR(hiya_male1_sam)+3) & 0xfffffffc,(46168/7000),Zero_Audio_8bit_Signed);
	}
	else
	{
		u235PlaySampleFreq(isPlayer1 ? SOUND_CHANNEL_PLAYER1 : SOUND_CHANNEL_PLAYER2, SOUND_HIYA_MALE2, 8000);
		//zeroPlaySample(isPlayer1 ? SOUND_CHANNEL_PLAYER1 : SOUND_CHANNEL_PLAYER2,STRPTR(hiya_male2_sam),(STRPTR(hiya_male2_sam_end)-STRPTR(hiya_male2_sam)+3) & 0xfffffffc,(46168/7000),Zero_Audio_8bit_Signed);
	}
}

void sfxHiyaFemale(struct SoundHandler* soundHandler, bool isPlayer1)
{
	if (!soundHandler->EnableSFX)
		return;

	if (rapRND() & 255 > 100)
	{
		u235PlaySampleFreq(isPlayer1 ? SOUND_CHANNEL_PLAYER1 : SOUND_CHANNEL_PLAYER2, SOUND_HIYA_FEMALE1, 8000);
		//zeroPlaySample(isPlayer1 ? SOUND_CHANNEL_PLAYER1 : SOUND_CHANNEL_PLAYER2,STRPTR(hiya_female1_sam),(STRPTR(hiya_female1_sam_end)-STRPTR(hiya_female1_sam)+3) & 0xfffffffc,(46168/7000),Zero_Audio_8bit_Signed);
	}
	else
	{
		u235PlaySampleFreq(isPlayer1 ? SOUND_CHANNEL_PLAYER1 : SOUND_CHANNEL_PLAYER2, SOUND_HIYA_FEMALE2, 8000);
		//zeroPlaySample(isPlayer1 ? SOUND_CHANNEL_PLAYER1 : SOUND_CHANNEL_PLAYER2,STRPTR(hiya_female2_sam),(STRPTR(hiya_female2_sam_end)-STRPTR(hiya_female2_sam)+3) & 0xfffffffc,(46168/7000),Zero_Audio_8bit_Signed);
	}
}

void sfxHiyaKang(struct SoundHandler* soundHandler, bool isPlayer1)
{
	if (!soundHandler->EnableSFX)
		return;

	if (rapRND() & 255 > 100)
	{
		u235PlaySampleFreq(isPlayer1 ? SOUND_CHANNEL_PLAYER1 : SOUND_CHANNEL_PLAYER2, SOUND_HIYA_KANG1, 8000);
		//zeroPlaySample(isPlayer1 ? SOUND_CHANNEL_PLAYER1 : SOUND_CHANNEL_PLAYER2,STRPTR(hiya_kang1_sam),(STRPTR(hiya_kang1_sam_end)-STRPTR(hiya_kang1_sam)+3) & 0xfffffffc,(46168/7000),Zero_Audio_8bit_Signed);
	}
	else
	{
		u235PlaySampleFreq(isPlayer1 ? SOUND_CHANNEL_PLAYER1 : SOUND_CHANNEL_PLAYER2, SOUND_HIYA_KANG2, 8000);
		//zeroPlaySample(isPlayer1 ? SOUND_CHANNEL_PLAYER1 : SOUND_CHANNEL_PLAYER2,STRPTR(hiya_kang2_sam),(STRPTR(hiya_kang2_sam_end)-STRPTR(hiya_kang2_sam)+3) & 0xfffffffc,(46168/7000),Zero_Audio_8bit_Signed);
	}
}

void sfxHiyaNinja(struct SoundHandler* soundHandler, bool isPlayer1)
{
	if (!soundHandler->EnableSFX)
		return;

	if (rapRND() & 255 > 100)
	{
		u235PlaySampleFreq(isPlayer1 ? SOUND_CHANNEL_PLAYER1 : SOUND_CHANNEL_PLAYER2, SOUND_HIYA_NINJA1, 8000);
		//zeroPlaySample(isPlayer1 ? SOUND_CHANNEL_PLAYER1 : SOUND_CHANNEL_PLAYER2,STRPTR(hiya_ninja1_sam),(STRPTR(hiya_ninja1_sam_end)-STRPTR(hiya_ninja1_sam)+3) & 0xfffffffc,(46168/7000),Zero_Audio_8bit_Signed);
	}
	else
	{
		u235PlaySampleFreq(isPlayer1 ? SOUND_CHANNEL_PLAYER1 : SOUND_CHANNEL_PLAYER2, SOUND_HIYA_NINJA2, 8000);
		//zeroPlaySample(isPlayer1 ? SOUND_CHANNEL_PLAYER1 : SOUND_CHANNEL_PLAYER2,STRPTR(hiya_ninja2_sam),(STRPTR(hiya_ninja2_sam_end)-STRPTR(hiya_ninja2_sam)+3) & 0xfffffffc,(46168/7000),Zero_Audio_8bit_Signed);
	}
}

void sfxBlock(struct SoundHandler* soundHandler, bool isPlayer1)
{
	if (!soundHandler->EnableSFX)
		return;

	if (rapRND() & 255 > 100)
	{
		u235PlaySampleFreq(isPlayer1 ? SOUND_CHANNEL_PLAYER1 : SOUND_CHANNEL_PLAYER2, SOUND_BLOCK01, 8000);
		//zeroPlaySample(isPlayer1 ? SOUND_CHANNEL_PLAYER1 : SOUND_CHANNEL_PLAYER2,STRPTR(block01_sam),(STRPTR(block01_sam_end)-STRPTR(block01_sam)+3) & 0xfffffffc,(46168/7000),Zero_Audio_8bit_Signed);
	}
	else
	{
		u235PlaySampleFreq(isPlayer1 ? SOUND_CHANNEL_PLAYER1 : SOUND_CHANNEL_PLAYER2, SOUND_BLOCK02, 8000);
		//zeroPlaySample(isPlayer1 ? SOUND_CHANNEL_PLAYER1 : SOUND_CHANNEL_PLAYER2,STRPTR(block02_sam),(STRPTR(block02_sam_end)-STRPTR(block02_sam)+3) & 0xfffffffc,(46168/7000),Zero_Audio_8bit_Signed);
	}
}

void sfxGroanMale(struct SoundHandler* soundHandler, bool isPlayer1)
{
	if (!soundHandler->EnableSFX)
		return;

	if (rapRND() & 255 > 100)
	{
		u235PlaySampleFreq(isPlayer1 ? SOUND_CHANNEL_PLAYER1 : SOUND_CHANNEL_PLAYER2, SOUND_GROAN_MALE01, 8000);
		//zeroPlaySample(isPlayer1 ? SOUND_CHANNEL_PLAYER1 : SOUND_CHANNEL_PLAYER2,STRPTR(groan_male01_sam),(STRPTR(groan_male01_sam_end)-STRPTR(groan_male01_sam)+3) & 0xfffffffc,(46168/7000),Zero_Audio_8bit_Signed);
	}
	else
	{
		u235PlaySampleFreq(isPlayer1 ? SOUND_CHANNEL_PLAYER1 : SOUND_CHANNEL_PLAYER2, SOUND_GROAN_MALE02, 8000);
		//zeroPlaySample(isPlayer1 ? SOUND_CHANNEL_PLAYER1 : SOUND_CHANNEL_PLAYER2,STRPTR(groan_male02_sam),(STRPTR(groan_male02_sam_end)-STRPTR(groan_male02_sam)+3) & 0xfffffffc,(46168/7000),Zero_Audio_8bit_Signed);
	}
}

void sfxGroanFemale(struct SoundHandler* soundHandler, bool isPlayer1)
{
	if (!soundHandler->EnableSFX)
		return;

	if (rapRND() & 255 > 100)
	{
		u235PlaySampleFreq(isPlayer1 ? SOUND_CHANNEL_PLAYER1 : SOUND_CHANNEL_PLAYER2, SOUND_GROAN_FEMALE01, 8000);
		//zeroPlaySample(isPlayer1 ? SOUND_CHANNEL_PLAYER1 : SOUND_CHANNEL_PLAYER2,STRPTR(groan_female01_sam),(STRPTR(groan_female01_sam_end)-STRPTR(groan_female01_sam)+3) & 0xfffffffc,(46168/7000),Zero_Audio_8bit_Signed);
	}
	else
	{
		u235PlaySampleFreq(isPlayer1 ? SOUND_CHANNEL_PLAYER1 : SOUND_CHANNEL_PLAYER2, SOUND_GROAN_FEMALE02, 8000);
		//zeroPlaySample(isPlayer1 ? SOUND_CHANNEL_PLAYER1 : SOUND_CHANNEL_PLAYER2,STRPTR(groan_female02_sam),(STRPTR(groan_female02_sam_end)-STRPTR(groan_female02_sam)+3) & 0xfffffffc,(46168/7000),Zero_Audio_8bit_Signed);
	}
}

void sfxHit(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	if (rapRND() & 255 > 100)
	{
		u235PlaySampleFreq(SOUND_CHANNEL_MISC, SOUND_HIT_01, 8000);
		//zeroPlaySample(SOUND_CHANNEL_MISC,STRPTR(hit_01_sam),(STRPTR(hit_01_sam_end)-STRPTR(hit_01_sam)+3) & 0xfffffffc,(46168/7000),Zero_Audio_8bit_Signed);
	}
	else
	{
		u235PlaySampleFreq(SOUND_CHANNEL_MISC, SOUND_HIT_02, 8000);
		//zeroPlaySample(SOUND_CHANNEL_MISC,STRPTR(hit_02_sam),(STRPTR(hit_02_sam_end)-STRPTR(hit_02_sam)+3) & 0xfffffffc,(46168/7000),Zero_Audio_8bit_Signed);
	}
}

void sfxImpact(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	u235PlaySampleFreq(SOUND_CHANNEL_MISC, SOUND_HIT_IMPACT, 8000);
	//zeroPlaySample(SOUND_CHANNEL_MISC,STRPTR(hit_impact_sam),(STRPTR(hit_impact_sam_end)-STRPTR(hit_impact_sam)+3) & 0xfffffffc,(46168/7000),Zero_Audio_8bit_Signed);
}

void sfxBlood(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	if (rapRND() & 255 > 100)
	{
		u235PlaySampleFreq(SOUND_CHANNEL_MISC, SOUND_BLOOD01, 8000);
		//zeroPlaySample(SOUND_CHANNEL_MISC,STRPTR(blood01_sam),(STRPTR(blood01_sam_end)-STRPTR(blood01_sam)+3) & 0xfffffffc,(46168/7000),Zero_Audio_8bit_Signed);
	}
	else
	{
		u235PlaySampleFreq(SOUND_CHANNEL_MISC, SOUND_BLOOD02, 8000);
		//zeroPlaySample(SOUND_CHANNEL_MISC,STRPTR(blood02_sam),(STRPTR(blood02_sam_end)-STRPTR(blood02_sam)+3) & 0xfffffffc,(46168/7000),Zero_Audio_8bit_Signed);
	}
}

void sfxSwing(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	if (rapRND() & 255 > 100)
	{
		u235PlaySampleFreq(SOUND_CHANNEL_MISC, SOUND_SWING_01, 8000);
		//zeroPlaySample(SOUND_CHANNEL_MISC,STRPTR(swing_01_sam),(STRPTR(swing_01_sam_end)-STRPTR(swing_01_sam)+3) & 0xfffffffc,(46168/7000),Zero_Audio_8bit_Signed);
	}
	else
	{
		u235PlaySampleFreq(SOUND_CHANNEL_MISC, SOUND_SWING_02, 8000);
		//zeroPlaySample(SOUND_CHANNEL_MISC,STRPTR(swing_02_sam),(STRPTR(swing_02_sam_end)-STRPTR(swing_02_sam)+3) & 0xfffffffc,(46168/7000),Zero_Audio_8bit_Signed);
	}
}

void sfxThud(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	u235PlaySampleFreq(SOUND_CHANNEL_MISC, SOUND_THUD, 8000);
	//zeroPlaySample(SOUND_CHANNEL_MISC,STRPTR(thud_sam),(STRPTR(thud_sam_end)-STRPTR(thud_sam)+3) & 0xfffffffc,(46168/7000),Zero_Audio_8bit_Signed);
}

void sfxYellMale(struct SoundHandler* soundHandler, bool isPlayer1)
{
	if (!soundHandler->EnableSFX)
		return;

	if (rapRND() & 255 > 100)
	{
		u235PlaySampleFreq(isPlayer1 ? SOUND_CHANNEL_PLAYER1 : SOUND_CHANNEL_PLAYER2, SOUND_YELL_MALE01, 8000);
		//zeroPlaySample(isPlayer1 ? SOUND_CHANNEL_PLAYER1 : SOUND_CHANNEL_PLAYER2,STRPTR(yell_male01_sam),(STRPTR(yell_male01_sam_end)-STRPTR(yell_male01_sam)+3) & 0xfffffffc,(46168/7000),Zero_Audio_8bit_Signed);
	}
	else
	{
		u235PlaySampleFreq(isPlayer1 ? SOUND_CHANNEL_PLAYER1 : SOUND_CHANNEL_PLAYER2, SOUND_YELL_MALE02, 8000);
		//zeroPlaySample(isPlayer1 ? SOUND_CHANNEL_PLAYER1 : SOUND_CHANNEL_PLAYER2,STRPTR(yell_male02_sam),(STRPTR(yell_male02_sam_end)-STRPTR(yell_male02_sam)+3) & 0xfffffffc,(46168/7000),Zero_Audio_8bit_Signed);
	}
}

void sfxYellFemale(struct SoundHandler* soundHandler, bool isPlayer1)
{
	if (!soundHandler->EnableSFX)
		return;

	u235PlaySampleFreq(isPlayer1 ? SOUND_CHANNEL_PLAYER1 : SOUND_CHANNEL_PLAYER2, SOUND_YELL_FEMALE, 8000);
	//zeroPlaySample(isPlayer1 ? SOUND_CHANNEL_PLAYER1 : SOUND_CHANNEL_PLAYER2,STRPTR(yell_female_sam),(STRPTR(yell_female_sam_end)-STRPTR(yell_female_sam)+3) & 0xfffffffc,(46168/7000),Zero_Audio_8bit_Signed);
}

void sfxYellKang(struct SoundHandler* soundHandler, bool isPlayer1)
{
	if (!soundHandler->EnableSFX)
		return;

	u235PlaySampleFreq(isPlayer1 ? SOUND_CHANNEL_PLAYER1 : SOUND_CHANNEL_PLAYER2, SOUND_YELL_KANG, 8000);
	//zeroPlaySample(isPlayer1 ? SOUND_CHANNEL_PLAYER1 : SOUND_CHANNEL_PLAYER2,STRPTR(yell_kang_sam),(STRPTR(yell_kang_sam_end)-STRPTR(yell_kang_sam)+3) & 0xfffffffc,(46168/7000),Zero_Audio_8bit_Signed);
}

void sfxJumpMale(struct SoundHandler* soundHandler, bool isPlayer1)
{
	if (!soundHandler->EnableSFX)
		return;

	u235PlaySampleFreq(isPlayer1 ? SOUND_CHANNEL_PLAYER1 : SOUND_CHANNEL_PLAYER2, SOUND_JUMP_MALE, 8000);
	//zeroPlaySample(isPlayer1 ? SOUND_CHANNEL_PLAYER1 : SOUND_CHANNEL_PLAYER2,STRPTR(jump_male_sam),(STRPTR(jump_male_sam_end)-STRPTR(jump_male_sam)+3) & 0xfffffffc,(46168/7000),Zero_Audio_8bit_Signed);
}

void sfxJumpFemale(struct SoundHandler* soundHandler, bool isPlayer1)
{
	if (!soundHandler->EnableSFX)
		return;

	u235PlaySampleFreq(isPlayer1 ? SOUND_CHANNEL_PLAYER1 : SOUND_CHANNEL_PLAYER2, SOUND_JUMP_FEMALE, 8000);
	//zeroPlaySample(isPlayer1 ? SOUND_CHANNEL_PLAYER1 : SOUND_CHANNEL_PLAYER2,STRPTR(jump_female_sam),(STRPTR(jump_female_sam_end)-STRPTR(jump_female_sam)+3) & 0xfffffffc,(46168/7000),Zero_Audio_8bit_Signed);
}

void sfxJumpNinja(struct SoundHandler* soundHandler, bool isPlayer1)
{
	if (!soundHandler->EnableSFX)
		return;

	u235PlaySampleFreq(isPlayer1 ? SOUND_CHANNEL_PLAYER1 : SOUND_CHANNEL_PLAYER2, SOUND_JUMP_NINJA, 8000);
	//zeroPlaySample(isPlayer1 ? SOUND_CHANNEL_PLAYER1 : SOUND_CHANNEL_PLAYER2,STRPTR(jump_ninja_sam),(STRPTR(jump_ninja_sam_end)-STRPTR(jump_ninja_sam)+3) & 0xfffffffc,(46168/7000),Zero_Audio_8bit_Signed);
}

void sfxJumpRoll(struct SoundHandler* soundHandler, bool isPlayer1)
{
	if (!soundHandler->EnableSFX)
		return;

	u235PlaySampleFreq(isPlayer1 ? SOUND_CHANNEL_PLAYER1 : SOUND_CHANNEL_PLAYER2, SOUND_JUMP_ROLL, 8000);
	//zeroPlaySample(isPlayer1 ? SOUND_CHANNEL_PLAYER1 : SOUND_CHANNEL_PLAYER2,STRPTR(jump_roll_sam),(STRPTR(jump_roll_sam_end)-STRPTR(jump_roll_sam)+3) & 0xfffffffc,(46168/7000),Zero_Audio_8bit_Signed);
}

void sfxCrowdAww(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;
	
	u235PlaySampleFreq(SOUND_CHANNEL_ANNOUNCER, SOUND_CROWD_AWW, 8000);
	//zeroPlaySample(SOUND_CHANNEL_ANNOUNCER,STRPTR(crowd_aww_sam),(STRPTR(crowd_aww_sam_end)-STRPTR(crowd_aww_sam)+3) & 0xfffffffc,(46168/7000),Zero_Audio_8bit_Signed);
}

void sfxAnnouncerExcellent(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;
	
	u235PlaySampleFreq(SOUND_CHANNEL_ANNOUNCER, SOUND_ANNOUNCER_EXCELLENT, 8000);
	//zeroPlaySample(SOUND_CHANNEL_ANNOUNCER,STRPTR(announcer_excellent_sam),(STRPTR(announcer_excellent_sam_end)-STRPTR(announcer_excellent_sam)+3) & 0xfffffffc,(46168/7000),Zero_Audio_8bit_Signed);
}

void sfxAnnouncerLaugh(struct SoundHandler* soundHandler)
{
	if (!soundHandler->EnableSFX)
		return;

	u235PlaySampleFreq(SOUND_CHANNEL_ANNOUNCER, SOUND_ANNOUNCER_LAUGH, 8000);
	//zeroPlaySample(SOUND_CHANNEL_ANNOUNCER,STRPTR(announcer_laugh_sam),(STRPTR(announcer_laugh_sam_end)-STRPTR(announcer_laugh_sam)+3) & 0xfffffffc,(46168/7000),Zero_Audio_8bit_Signed);
}