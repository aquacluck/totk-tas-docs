// zero first: immediately setting tas rotation can disrupt camera
tas::clearGyro(); tas::input(1);

Player.setPosRot(Vector3f(-20, -6.5, 35), Matrix33f::SOUTH);
tas::input(30, KEY_ZL); // align
tas::input(30, KEY_ZR); // begin+hold bow aim, so we rotate with aim

// XXX only north ever works? something weird here, it needs to have
// some suitable(?) value for setGyroAngularVelocity to have an effect:
tas::setGyroRotation(Matrix33f::NORTH);

// 20fr of 1.0 = 1.0 rotations:
tas::setGyroAngularVelocity(Vector3f(0, 0, 1));
tas::input(20, KEY_ZR);

// zero after: immediately reverting to true gyro rotation can disrupt camera
tas::clearGyro();

// hold bow aim + shoot + unwield bow
tas::input(30, KEY_ZR);
tas::input(5);
tas::input(1, KEY_B);

