TextWriter::toast(45, "reset \n");
Player.setPosRot(-20, 37, -30, 1, 0, 0, 0, 1, 0, 0, 0, 1);
tas::input(15); tas::input(15, KEY_ZL); tas::input(15);

TextWriter::toast(45, "throw init \n");
ActorWatcher::assignSlotAwaitSpawn(1, "BombFruit");
tas::input(1, KEY_R|KEY_DUP); tas::input(44, KEY_R);

tas::input(30, KEY_R, STICK_UP_MAX);
tas::input(5, KEY_R|KEY_X, STICK_UP_MAX);

//tas::input(30, KEY_R, STICK_DOWN_MAX);
//tas::input(5, KEY_R|KEY_X, STICK_DOWN_MAX);

//tas::input(30, KEY_R, STICK_LEFT_MAX);
//tas::input(5, KEY_R|KEY_X, STICK_LEFT_MAX);
