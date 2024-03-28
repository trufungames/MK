struct SoundHandler {
    bool EnableSFX;
    bool EnableMusic;
    int VolumeSFX;
    int VolumeMusic;
};

void sfxFight(struct SoundHandler* soundHandler);
void sfxJohnnyCage(struct SoundHandler* soundHandler, bool isPlayer1);
void sfxKano(struct SoundHandler* soundHandler, bool isPlayer1);
void sfxRaiden(struct SoundHandler* soundHandler, bool isPlayer1);
void sfxLiuKang(struct SoundHandler* soundHandler, bool isPlayer1);
void sfxScorpion(struct SoundHandler* soundHandler, bool isPlayer1);
void sfxSubzero(struct SoundHandler* soundHandler, bool isPlayer1);
void sfxSonya(struct SoundHandler* soundHandler, bool isPlayer1);
void sfxP1Cursor(struct SoundHandler* soundHandler);
void sfxP2Cursor(struct SoundHandler* soundHandler);
void sfxSelected(struct SoundHandler* soundHandler);
void sfxGong(struct SoundHandler* soundHandler);
void sfxIntro(struct SoundHandler* soundHandler);
void sfxHiyaMale(struct SoundHandler* soundHandler, bool isPlayer1);
void sfxHiyaFemale(struct SoundHandler* soundHandler, bool isPlayer1);
void sfxHiyaKang(struct SoundHandler* soundHandler, bool isPlayer1);
void sfxHiyaNinja(struct SoundHandler* soundHandler, bool isPlayer1);
void sfxBlock(struct SoundHandler* soundHandler, bool isPlayer1);
void sfxGroanMale(struct SoundHandler* soundHandler, bool isPlayer1);
void sfxGroanFemale(struct SoundHandler* soundHandler, bool isPlayer1);
void sfxYellMale(struct SoundHandler* soundHandler, bool isPlayer1);
void sfxYellFemale(struct SoundHandler* soundHandler, bool isPlayer1);
void sfxYellKang(struct SoundHandler* soundHandler, bool isPlayer1);
void sfxJumpMale(struct SoundHandler* soundHandler, bool isPlayer1);
void sfxJumpFemale(struct SoundHandler* soundHandler, bool isPlayer1);
void sfxJumpNinja(struct SoundHandler* soundHandler, bool isPlayer1);
void sfxThrowMale(struct SoundHandler* soundHandler, bool isPlayer1);
void sfxThrowFemale(struct SoundHandler* soundHandler, bool isPlayer1);
void sfxThrowNinja(struct SoundHandler* soundHandler, bool isPlayer1);
void sfxJumpRoll(struct SoundHandler* soundHandler, bool isPlayer1);
void sfxCageYeah(struct SoundHandler* soundHandler, bool isPlayer1);
void sfxKanoYell(struct SoundHandler* soundHandler, bool isPlayer1);
void sfxKanoHeadbutt(struct SoundHandler* soundHandler, bool isPlayer1);
void sfxHit(struct SoundHandler* soundHandler);
void sfxImpact(struct SoundHandler* soundHandler);
void sfxBlood(struct SoundHandler* soundHandler);
void sfxSwing(struct SoundHandler* soundHandler);
void sfxThud(struct SoundHandler* soundHandler);
void sfxTruFun(struct SoundHandler* soundHandler);
void sfxCrowdAww(struct SoundHandler* soundHandler);
void sfxAnnouncerExcellent(struct SoundHandler* soundHandler);
void sfxAnnouncerLaugh(struct SoundHandler* soundHandler);
void sfxFinishHer(struct SoundHandler* soundHandler);
void sfxFinishHim(struct SoundHandler* soundHandler);
void sfxWins(struct SoundHandler* soundHandler);
void sfxFlawless(struct SoundHandler* soundHandler);
void sfxFatality(struct SoundHandler* soundHandler);
void musicTitle(struct SoundHandler* soundHandler);
void musicStage(struct SoundHandler* soundHandler);
void musicStop();