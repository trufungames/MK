void hudInit();
void hudUpdate(struct Fighter* fighter1, struct Fighter* fighter2);
void hudUpdateFighter(struct Fighter* fighter);
void hudUpdateHealthbar(bool isPlayer1, int hitPoints);
char* hudGetString(bool isPlayer1, int hitPoints);