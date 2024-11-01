struct Screen {
    short name;
    void (*enter)(struct ScreenMachine*);
    void (*update)(struct ScreenMachine*, struct SoundHandler*);
};

struct ScreenMachine {
    short currentScreen;
    short vars[5];
    struct Screen* (screens)[SCREEN_TOTAL_COUNT];
};

void screenMachineAdd(struct ScreenMachine* screenMachine, short name, struct Screen* screen);
void screenMachineInit(struct ScreenMachine* screenMachine, short name);
void screenMachineUpdate(struct ScreenMachine* screenMachine, struct SoundHandler* soundHandler);
void screenMachineGoto(struct ScreenMachine* screenMachine, short newState);

void ScreenPrealpha_Enter(struct ScreenMachine*);
void ScreenPrealpha_Update(struct ScreenMachine*, struct SoundHandler* soundHandler);

void ScreenTrufun_Enter(struct ScreenMachine*);
void ScreenTrufun_Update(struct ScreenMachine*, struct SoundHandler* soundHandler);

void ScreenTitleScreen_Enter(struct ScreenMachine*);
void ScreenTitleScreen_Update(struct ScreenMachine*, struct SoundHandler* soundHandler);