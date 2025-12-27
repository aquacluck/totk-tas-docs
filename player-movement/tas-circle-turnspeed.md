```cpp
void doCircle(int frames, u64 buttons) {
    const float PI = 3.14159265;
    const float frameDelta = 2*PI/frames;
    const s32 maxStick = 32767;
    float rad = 0;
    while (rad < 2*PI) {
        tas::input(2, buttons, cos(rad)*maxStick, sin(rad)*maxStick, 0, 0);
        rad += frameDelta;
    }
}

void main() {
    camera::freeze(
        -0.000026, 0.707161, -0.707053, // up
        -74.497437, 35.298172, -38.766922, // pos
        -74.497444, 3.299999, -38.976349 // at
    );

    TextWriter::toast(30*2, "2s radius\n");
    doCircle(30*2, KEY_B);

    TextWriter::toast(30*4, "4s radius\n");
    doCircle(30*4, KEY_B);
    tas::input(120, NONE, 0,0,0,0); //rest lol

    TextWriter::toast(30*6, "6s radius\n");
    doCircle(30*6, KEY_B);
    tas::input(240, NONE, 0,0,0,0); //rest lol

    TextWriter::toast(30*8, "8s radius\n");
    doCircle(30*8, KEY_B);
}
```

1.2.1 shown. it runs in circles, although lots of little issues still. Normal move speed appears slightly boosted during tight turns (difficult to exploit?), but sprinting is slowed down

tas-circle-sprint.mp4 <a href="https://aquacluck.github.io/totk-tas-docs/media/tas-circle-sprint.mp4" download>(download)</a>
<video src="https://aquacluck.github.io/totk-tas-docs/media/tas-circle-sprint.mp4" controls></video>

tas-circle-walk.mp4 <a href="https://aquacluck.github.io/totk-tas-docs/media/tas-circle-walk.mp4" download>(download)</a>
<video src="https://aquacluck.github.io/totk-tas-docs/media/tas-circle-walk.mp4" controls></video>

