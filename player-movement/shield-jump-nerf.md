3s cooldown for a 47% shield jump speedup, versions 1.0-1.2.1 at least. according to Lightos these "nerfed shield jumps" are a botw leftover, although it was stronger and affected height there.

```cpp
    doResetCamera();

    tas::input(1, KEY_X);
    tas::input(1, NONE);
    tas::input(1, KEY_ZL|KEY_A); // neutral shield jump

    tas::input(86, NONE, 0,32767); // 86

    tas::input(1, KEY_X, 0,32767); // jump
    tas::input(1, NONE,  0,32767);
    tas::input(1, KEY_ZL|KEY_A, 0,32767); // shield jump at 5.1m/s

    tas::input(30, NONE);
    doResetCamera();

    tas::input(1, KEY_X);
    tas::input(1, NONE);
    tas::input(1, KEY_ZL|KEY_A); // neutral shield jump

    tas::input(88, NONE, 0,32767); // 88

    tas::input(1, KEY_X, 0,32767); // jump
    tas::input(1, NONE,  0,32767);
    tas::input(1, KEY_ZL|KEY_A, 0,32767); // shield jump at 7.5m/s
```

tas-doShieldJumpsForward-speed-5.1-7.5.mp4 <a href="https://aquacluck.github.io/totk-tas-docs/media/tas-doShieldJumpsForward-speed-5.1-7.5.mp4" download>(download)</a>
<video src="https://aquacluck.github.io/totk-tas-docs/media/tas-doShieldJumpsForward-speed-5.1-7.5.mp4" controls></video>

