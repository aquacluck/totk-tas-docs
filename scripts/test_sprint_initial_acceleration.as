void setup() {
    TextWriter::toast(40, "(setup)\n");
    tas::input(5);
    Player.setPosRot(Vector3f(0, 37, 0), Matrix33f::WEST);
    tas::input(5);
    tas::input(10, KEY_ZL);
    tas::input(20);
}

void test_sprint_initial_acceleration__standstill() {
    setup();
    const float xinit = Player.pos.x;
    float xprev = xinit;
    float xd = 0;
    const int dur = 30*15;
    for(int i=0; i < dur+1; i++) {
        tas::input(1, KEY_B, STICK_UP_MAX);
        xd = Player.pos.x - xprev;
        TextWriter::toast(
            20, format("x = {} (diff {}, i={}, {} m/s in {} fr)\n",
            Player.pos.x, xd, i, (xinit-Player.pos.x)*30/(i+1), (i+1)
        ));
        xprev = Player.pos.x;
    }
}

void test_sprint_initial_acceleration__walk() {
    setup();
    tas::input(15, NONE, STICK_UP_MAX); // walk
    const float xinit = Player.pos.x;
    float xprev = xinit;
    float xd = 0;
    const int dur = 30*15;
    for(int i=0; i < dur+1; i++) {
        tas::input(1, KEY_B, STICK_UP_MAX);
        xd = Player.pos.x - xprev;
        TextWriter::toast(
            20, format("x = {} (diff {}, i={}, {} m/s in {} fr)\n",
            Player.pos.x, xd, i, (xinit-Player.pos.x)*30/(i+1), (i+1)
        ));
        xprev = Player.pos.x;
    }
}

void test_sprint_initial_acceleration__crouchwalk() {
    setup();
    tas::input(2, LSTICK); // crouch
    tas::input(15);
    tas::input(15, NONE, STICK_UP_MAX); // crouch walk
    const float xinit = Player.pos.x;
    float xprev = xinit;
    float xd = 0;
    const int dur = 30*15;
    for(int i=0; i < dur+1; i++) {
        tas::input(1, KEY_B, STICK_UP_MAX);
        xd = Player.pos.x - xprev;
        TextWriter::toast(
            20, format("x = {} (diff {}, i={}, {} m/s in {} fr)\n",
            Player.pos.x, xd, i, (xinit-Player.pos.x)*30/(i+1), (i+1)
        ));
        xprev = Player.pos.x;
    }
}

void test_sprint_initial_acceleration__crouchstandstill() {
    setup();
    tas::input(2, LSTICK); // crouch
    tas::input(15);
    const float xinit = Player.pos.x;
    float xprev = xinit;
    float xd = 0;
    const int dur = 30*15;
    for(int i=0; i < dur+1; i++) {
        tas::input(1, KEY_B, STICK_UP_MAX);
        xd = Player.pos.x - xprev;
        TextWriter::toast(
            20, format("x = {} (diff {}, i={}, {} m/s in {} fr)\n",
            Player.pos.x, xd, i, (xinit-Player.pos.x)*30/(i+1), (i+1)
        ));
        xprev = Player.pos.x;
    }
}

void main() {
TextWriter::toast(30, "standstill\n");
test_sprint_initial_acceleration__standstill();

TextWriter::toast(30, "walk\n");
test_sprint_initial_acceleration__walk();

TextWriter::toast(30, "crouchwalk\n");
test_sprint_initial_acceleration__crouchwalk();

TextWriter::toast(30, "crouchstandstill\n");
test_sprint_initial_acceleration__crouchstandstill();

TextWriter::toast(10, "dun :)\n");
}