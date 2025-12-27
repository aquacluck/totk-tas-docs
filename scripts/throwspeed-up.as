int i = -1;
while (++i < 120) {
    TextWriter::toast(45, "reset \n");
    Player.setPosRot(-20, 37, -55, 1, 0, 0, 0, 1, 0, 0, 0, 1);
    tas::input(15); tas::input(15, KEY_ZL); tas::input(15);

    TextWriter::toast(45, "throw init \n");
    ActorWatcher::assignSlotAwaitSpawn(1, "BombFruit");
    tas::input(1, KEY_R|KEY_DUP); tas::input(44, KEY_R);

    TextWriter::toast(i, "aim 0.75 up for i frames \n");
    tas::input(i, KEY_R, Vector2f(0,0), STICK_DOWN_MAX*0.75); // XXX inverted

    while (ActorWatcher::get(1).pos_y > 38) {
        TextWriter::toast(1, "await below 38 \n");
        tas::input(1);
    }
    TextWriter::toast(15, "kaboom \n");
    tas::input(15);
    ActorWatcher::clearSlot(1);
}

