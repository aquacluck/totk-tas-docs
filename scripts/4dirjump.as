TextWriter::toast(45, "reset \n");
Player.setPosRot(-20, 37, -30, 1, 0, 0, 0, 1, 0, 0, 0, 1);
tas::input(15); tas::input(15, KEY_ZL); //tas::input(15, KEY_ZR);

tas::input(30, KEY_ZL, STICK_UP_MAX);
tas::input(60, KEY_ZL|KEY_X, STICK_UP_MAX);
tas::input(30, KEY_ZL, STICK_DOWN_MAX);
tas::input(60, KEY_ZL|KEY_X, STICK_DOWN_MAX);
tas::input(30, KEY_ZL, STICK_LEFT_MAX);
tas::input(60, KEY_ZL|KEY_X, STICK_LEFT_MAX);
tas::input(30, KEY_ZL, STICK_RIGHT_MAX);
tas::input(60, KEY_ZL|KEY_X, STICK_RIGHT_MAX);

