void notmain() {
    PlayerUtil::freezeStaminaRecovery(30000);
    input(5, B);
    Player.setPosRot(Vector3f(50, 37, 0), Matrix33f::WEST);
    input(5);
    input(10, ZL);
    input(5);
    PlayerUtil::freezeStaminaRecovery(0);

    int i = 0;
    int frame_i = 0;
    float init_x = Player.pos.x;
    float prev_x = Player.pos.x;
    float prev_vx = Player.vel.x;
    float prev_stam = PlayerUtil::getStamina();
    float stam_total = 0.00000000000001;

    // 99 run, 109 rest, 97 run, 109 rest, 97 run, 109 rest, ...
    int sprint_n = 99; // sliver from standstill
    int rest_n = 0;

    while(true) {

        if (sprint_n > 0) {
            tas::input(1, KEY_B, STICK_UP_MAX); // sliver from standstill
            sprint_n--;

        } else if (sprint_n == 0 && rest_n == 0) {
            rest_n = 109;
        }
        if (rest_n > 0) {
            tas::input(1, NONE, STICK_UP_MAX); // recharge from sliver to full
            rest_n--;
            if (rest_n == 0) { sprint_n = 97; } // sliver from walk (loop)
        }

        float stam = PlayerUtil::getStamina();
        if (stam < prev_stam) { stam_total += prev_stam - stam; }
        float x_total = Player.pos.x - init_x;

        TextWriter::print(
           0, format("i={}, frame_i={}, stam={} (d {}), x={} (d {}), vx={} (d {}) \n",
           i, frame_i, stam, prev_stam-stam, Player.pos.x, prev_x-Player.pos.x, Player.vel.x, prev_vx-Player.vel.x
        ));
        TextWriter::print(
           0, format("stam_total={}, x_total={}, x/stam={}, time_total={}s, m/s={} \n",
           stam_total, x_total, x_total/stam_total, (frame_i+1)/30.0, x_total*30.0/(frame_i+1)
        ));

        prev_x = Player.pos.x;
        prev_vx = Player.vel.x;
        prev_stam = stam;
        
        i++;
        frame_i++;
    }

}

void main() {
    PlayerUtil::doTextWriterStaminaCalculator(true);
    notmain();
}
// for(int i=0; i<10; i++) { tas::awaitExecFile("wip_dzuggle.as"); }
