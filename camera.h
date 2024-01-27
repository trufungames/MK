void cameraInit(unsigned int spriteIndex, int startX, int startY, int xMax, unsigned int gfxBase);
void cameraUpdate(struct Fighter* fighter1, struct Fighter* fighter2);
bool cameraCheckBoundsLeft(struct Fighter* fighterLeft, struct Fighter* fighterRight);
bool cameraCheckBoundsRight(struct Fighter* fighterLeft, struct Fighter* fighterRight);
bool cameraCanMove();