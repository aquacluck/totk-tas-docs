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

    int n_L  = 1; // crouch
    int n_B1 = 12; // cancel
    int n_R  = 0; // throw?
    int n_B2 = 0; // cancel?
    const int N_CYCLE = n_L+n_B1+n_R+n_B2;
    PlayerUtil::setStamina(300);

    while(true) {
        // movement
        input(n_L,  LSTICK, STICK_UP_MAX);
        input(n_B1, B,      STICK_UP_MAX);
        if (n_R  > 0) { input(n_R,  R, STICK_UP_MAX); }
        if (n_B2 > 0) { input(n_B2, B, STICK_UP_MAX); }

        // calc+display
        float stam = PlayerUtil::getStamina();
        if (stam < prev_stam) { stam_total += prev_stam - stam; }
        float x_total = Player.pos.x - init_x;

        TextWriter::toast(N_CYCLE, format("L={} B={}, R={} B={} \n", n_L, n_B1, n_R, n_B2 ));
        TextWriter::toast(N_CYCLE, format("i={}, frame_i={}, time_total={}s \n", i, frame_i,(frame_i+1)/30.0));
        TextWriter::toast(N_CYCLE, format("x={} (d {}, total={}) \n", Player.pos.x, prev_x-Player.pos.x, x_total));
        TextWriter::toast(N_CYCLE, format("vx={} (d {}, total={} m/s, cycle={} m/s) \n", Player.vel.x, prev_vx-Player.vel.x, x_total*30.0/(frame_i+1), (prev_x-Player.pos.x)*30.0/N_CYCLE ));
        TextWriter::toast(N_CYCLE, format("stam={} (d {}, total={}, cycle={} stam/s) \n", stam, prev_stam-stam, stam_total, (prev_stam-stam)*30.0/N_CYCLE ));
        //x/stam={}, x_total/stam_total

        prev_x = Player.pos.x;
        prev_vx = Player.vel.x;
        prev_stam = stam;
        
        i++;
        frame_i += N_CYCLE;
    }

}

void main() {
    PlayerUtil::doTextWriterStaminaCalculator(true);
    notmain();
}
// for(int i=0; i<10; i++) { tas::awaitExecFile("wip_dzuggle.as"); }
