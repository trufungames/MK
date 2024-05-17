struct PlayerInput {
    unsigned int ButtonPressed;    
    int Ticks;
};

void playerinputInit(struct Fighter* fighter);
void playerinputPush(struct Fighter* fighter, int buttonPressed);
int playerinputContains(struct Fighter* fighter, int checkInputs[], int checkCount);
void playerinputUpdate(struct Fighter* fighter1, struct Fighter* fighter2);
void playerinputReset(struct Fighter* fighter1, struct Fighter* fighter2);
int playerinputGetValue(int jagpadValue, int direction);