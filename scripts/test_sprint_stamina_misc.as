
// 1 wheel depletes in:
//   - 100 fr from standstill. 99 leaves sliver.
//   - 98 fr with walking start. 97 leaves sliver.
//   - 100 fr with crouch walking start. 99 leaves sliver.
//   - 101 fr from crouch standstill. 100 leaves sliver.
// 1 wheel recharges in:
//   - 130 fr from empty
//   - 109 fr from the smallest possible sliver after a single sprint cycle
// (smaller slivers may be possible with more complex depletion patterns.
//  scope limited to a single stamina wheel at single-frame granularity,
//  no investigation into true stamina values.)

void test_sprint_stamina_misc() {
    TextWriter::toast(40, "(setup)\n");
    tas::input(5);
    Player.setPosRot(Vector3f(0, 37, 0), Matrix33f::WEST);
    tas::input(5);
    tas::input(10, KEY_ZL);
    tas::input(20);

    TextWriter::toast(100, "1 wheel lasts 100 fr from standstill (entirely deplete)\n");
    tas::input(100, KEY_B, STICK_UP_MAX);

    TextWriter::toast(130, "recharge from empty to full in 130 fr \n(next sprint is first frame that can deplete stamina)\n");
    tas::input(130, NONE, STICK_UP_MAX);

    TextWriter::toast(97, "1 wheel lasts 98 fr from walking start \n(end sprint 1 fr before)\n");
    tas::input(97, KEY_B, STICK_UP_MAX); // leave sliver remaining

    TextWriter::toast(109, "recharge from sliver in 109 fr \n(next sprint is first frame that still flashes complete)\n");
    tas::input(109, NONE, STICK_UP_MAX); // recharge from sliver to full 

    TextWriter::toast(97, "1 wheel lasts 98 fr from walking start (entirely deplete)\n");
    tas::input(98, KEY_B, STICK_UP_MAX);

    TextWriter::toast(130, "recharge from empty to full in 130 fr \n(next sprint is first frame that still flashes complete)\n");
    tas::input(130, NONE, STICK_UP_MAX); // recharge from empty to full

    TextWriter::toast(1, "1 fr sprint on freshly replenished meter\n");
    tas::input(1, KEY_B, STICK_UP_MAX);  // stam meter flash+deplete

    TextWriter::toast(35, "(setup for crouch walk)\n");
    tas::input(5);
    Player.setPosRot(Vector3f(0, 37, 0), Matrix33f::WEST);
    tas::input(5);
    tas::input(5, LSTICK);
    tas::input(20);

    TextWriter::toast(101, "1 wheel lasts 101 fr from crouch standstill (end sprint 1 fr beore)\n");
    tas::input(100, KEY_B, STICK_UP_MAX);

    TextWriter::toast(109, "recharge from sliver in 109 fr \n(next sprint is first frame that still flashes complete)\n");
    tas::input(109, NONE, STICK_UP_MAX); // recharge from sliver to full 
    TextWriter::toast(1, "1 fr sprint on freshly replenished meter\n");
    tas::input(1, KEY_B, STICK_UP_MAX);  // stam meter flash+deplete

    TextWriter::toast(35, "(setup for crouch walk)\n");
    tas::input(5);
    Player.setPosRot(Vector3f(0, 37, 0), Matrix33f::WEST);
    tas::input(5);
    tas::input(5, LSTICK);
    tas::input(20);

    tas::input(30, NONE, STICK_UP_MAX); // crouch walk first
    TextWriter::toast(99, "1 wheel lasts 100 fr from crouch walk (end sprint 1 fr beore)\n");
    tas::input(99, KEY_B, STICK_UP_MAX); // leave sliver remaining

    TextWriter::toast(109, "recharge from sliver in 109 fr \n(next sprint is first frame that still flashes complete)\n");
    tas::input(109, NONE, STICK_UP_MAX); // recharge from sliver to full 
    TextWriter::toast(1, "1 fr sprint on freshly replenished meter\n");
    tas::input(1, KEY_B, STICK_UP_MAX);  // stam meter flash+deplete

    TextWriter::toast(10, "dun :)\n");
}


void main() {
test_sprint_stamina_misc();
}