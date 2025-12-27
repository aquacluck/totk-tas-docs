void doResetPlayer() {
    Player.setPosRot(-80, 1.5, -50, 1, 0, 0, 0, 1, 0, 0, 0, 1);
}
void doResetCamera() {
    doResetPlayer();
    tas::input(2); tas::input(10, KEY_ZL); tas::input(10);
}
void doDepleteStam(int count=40) {
    doResetPlayer();
    while (count-- > 0) {
        tas::input(1, KEY_B,  0,32767);
        tas::input(1, NONE,   0,32767);
    }
}
void doBasicGroundedForward() {
    doResetCamera();

    // walk
    tas::input(30, KEY_ZL, 0,32767);
    tas::input(30, NONE,   0,32767);

    // sprint
    doResetPlayer();
    tas::input(30, KEY_B,  0,32767);
    doDepleteStam();

    // exhausted walk
    doResetPlayer();
    tas::input(30, NONE,   0,32767);
    tas::input(30, KEY_ZL, 0,32767);

    doResetPlayer();
    tas::input(4); tas::input(1, KEY_LSTICK, 0,32767); tas::input(4); // crouch
    // exhausted crouch walk
    tas::input(30, NONE,   0,32767);
    tas::input(30, KEY_ZL, 0,32767);

    // crouch walk (stam recovered)
    tas::input(30, KEY_ZL, 0,32767);
    tas::input(30, NONE,   0,32767); 
    tas::input(2); tas::input(1, KEY_LSTICK); // stand

}
void doBasicJumpsForward() {
    doResetCamera();

    // walk
    tas::input(20, NONE, 0,32767);
    tas::input(1, KEY_X, 0,32767); // jump
    tas::input(40, NONE, 0,32767);

    tas::input(20, KEY_ZL, 0,32767);
    tas::input(1, KEY_ZL|KEY_X, 0,32767);  // jump
    tas::input(40, KEY_ZL, 0,32767);

    tas::input(20, KEY_ZL, 0,32767);
    tas::input(1, KEY_X, 0,32767); // release ZL fail jump
    tas::input(40, KEY_ZL, 0,32767);

    // sprint
    doResetPlayer();
    tas::input(20, KEY_B,  0,32767);
    tas::input(1, KEY_B|KEY_X, 0,32767); // jump
    tas::input(40, KEY_B, 0,32767);

    doResetPlayer();
    tas::input(20, KEY_B|KEY_ZL,  0,32767);
    tas::input(1, KEY_B|KEY_ZL|KEY_X, 0,32767); // jump
    tas::input(40, KEY_B|KEY_ZL,  0,32767);

    doResetPlayer();
    tas::input(20, KEY_B|KEY_ZL,  0,32767);
    tas::input(1, KEY_B|KEY_X, 0,32767); // release ZL jump
    tas::input(40, KEY_B|KEY_ZL,  0,32767);

    // exhausted walk
    doDepleteStam(); doResetPlayer();
    tas::input(10, NONE, 0,32767);
    tas::input(1, KEY_X, 0,32767); // jump
    tas::input(40, NONE, 0,32767);

    tas::input(10, KEY_ZL, 0,32767);
    tas::input(1, KEY_ZL|KEY_X, 0,32767);  // jump
    tas::input(40, KEY_ZL, 0,32767);

    tas::input(10, KEY_ZL, 0,32767);
    tas::input(1, KEY_X, 0,32767); // release ZL fail jump
    tas::input(40, KEY_ZL, 0,32767);
}
void doCrouchJumpsForward() {
    doResetCamera();
    tas::input(4); tas::input(1, KEY_LSTICK, 0,32767); tas::input(4); // crouch

    tas::input(20, NONE, 0,32767);
    tas::input(1, KEY_X, 0,32767); // jump
    tas::input(20, NONE, 0,32767);

    tas::input(20, KEY_ZL, 0,32767);
    tas::input(1, KEY_ZL|KEY_X, 0,32767);  // jump
    tas::input(20, KEY_ZL, 0,32767);

    tas::input(20, KEY_ZL, 0,32767);
    tas::input(1, KEY_X, 0,32767); // release ZL jump
    tas::input(20, KEY_ZL, 0,32767);

    // deplete stam + recrouch
    tas::input(4); tas::input(1, KEY_LSTICK); tas::input(4); // stand
    doResetCamera(); doDepleteStam(); doResetPlayer();
    tas::input(4); tas::input(1, KEY_LSTICK); tas::input(4); // crouch

    tas::input(20, NONE, 0,32767);
    tas::input(1, KEY_X, 0,32767); // jump
    tas::input(20, NONE, 0,32767);

    tas::input(20, KEY_ZL, 0,32767);
    tas::input(1, KEY_ZL|KEY_X, 0,32767);  // jump
    tas::input(20, KEY_ZL, 0,32767);

    tas::input(20, KEY_ZL, 0,32767);
    tas::input(1, KEY_X, 0,32767); // release ZL jump
    tas::input(40, KEY_ZL, 0,32767);
    tas::input(4); tas::input(1, KEY_LSTICK); tas::input(4); // stand
}

void main() {
    //doBasicGroundedForward(); // clip 1
    //doBasicJumpsForward();    // clip 2
    //doCrouchJumpsForward();   // clip 3

    //doShieldJumpsForward(); // TODO shield jumps are very interesting
    // TODO ZL directionals
    // TODO holding materials? throw+bow aims?
}

