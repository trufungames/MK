void cameraInit(int stage, int startX, int startY, int xMax, unsigned int gfxBase);
void cameraUpdate(struct Fighter* fighter1, struct Fighter* fighter2);
bool cameraCheckBoundsLeft(struct Fighter* fighterLeft, struct Fighter* fighterRight);
bool cameraCheckBoundsRight(struct Fighter* fighterLeft, struct Fighter* fighterRight);
bool cameraCanMove();
bool cameraIsAtLeftWall();
bool cameraIsAtRightWall();
int cameraGetX();
int cameraGetY();
int cameraGetParalaxX();
void cameraResetTicks();
int cameraGetOffset();
bool cameraFighterIsAtBoundsRight(struct Fighter* fighter);
bool cameraFighterIsAtBoundsLeft(struct Fighter* fighter);
void cameraScrollPit();
bool cameraIsScrollingPit();