## Gyro Angular Velocity
- **gyro unit scale: 1.0 = 18°/fr = 0.1π/fr = 0.05 rotations/fr (at 30fps)**
- First 4 tests measure 1.5 rotations, as this is one of the simplest results to reach with the scaling effects.
    - 30 frames at 1.0 = 1.5 rotations (I ran it twice here so you can see it return to the origin)
    - 60 frames at 0.5 = 1.5 rotations
    - 600 frames at 0.05 = 1.5 rotations
    - 1 frame at 30.0 = 1.5 rotations
- Last 2 tests are measuring 1 full rotation:
    - 20 frames at 1.0 = 1.0 rotations
    - 1 frame at 20.0 = 1.0 rotations (invisible)

Issues:
- Due to how starting bow aim perturbs Player's rotation (as made famous by floorbow in blindfolded), you'll see him deviate from south before gyro turning even begins. In order to keep the test code short+sweet I did not try to correct for this. I feel the math works out clearly enough that this is unnecessary, and the `1 frame at 20.0 = 1.0 rotations (invisible)` case shows that these figures are perfect given the conditions+assumptions.
- I don't understand what conditions are required for the aim to respond to angular velocity. Setting gyro rotation to my "north" constant (this matrix represents the *irl controller's* rotation, not any logical in-game north, so it's just a value that happens to work here) consistently yields these results, and my starting rotation+camer+gyro+etc don't seem to matter either, so I hope this can be safely ignored but I don't understand it.
- I don't have tooling to test under lag yet, so idk how it handles 20fps yet

Deriving the gyro unit:
- we know: `30 frames at 1.0 = 1.5 rotations` and that this ang/frame ratio holds proportionally however we scale the magnitude or duration of these tests.
- so the tests directly show that `1.0 gyro units = 1.5 rotations/s = 540°/sec or 3π/s`
- divide by 30fps, so `1 gyro angvel unit = 18°/fr = 0.1π/fr = 0.05 rotations/fr`

[gyro-basic-test.as](https://github.com/aquacluck/totk-tas-docs/blob/main/scripts/gyro-basic-test.as) [(download)](../scripts/gyro-basic-test.as)

gyro1-30fr-1.0-1.5rot.mp4 <a href="https://aquacluck.github.io/totk-tas-docs/media/gyro1-30fr-1.0-1.5rot.mp4" download>(download)</a>
<video src="https://aquacluck.github.io/totk-tas-docs/media/gyro1-30fr-1.0-1.5rot.mp4" controls></video>

gyro2-60fr-0.5-1.5rot.mp4 <a href="https://aquacluck.github.io/totk-tas-docs/media/gyro2-60fr-0.5-1.5rot.mp4" download>(download)</a>
<video src="https://aquacluck.github.io/totk-tas-docs/media/gyro2-60fr-0.5-1.5rot.mp4" controls></video>

gyro3-600fr-0.05-1.5rot.mp4 <a href="https://aquacluck.github.io/totk-tas-docs/media/gyro3-600fr-0.05-1.5rot.mp4" download>(download)</a>
<video src="https://aquacluck.github.io/totk-tas-docs/media/gyro3-600fr-0.05-1.5rot.mp4" controls></video>

gyro4-1fr-30-1.5rot.mp4 <a href="https://aquacluck.github.io/totk-tas-docs/media/gyro4-1fr-30-1.5rot.mp4" download>(download)</a>
<video src="https://aquacluck.github.io/totk-tas-docs/media/gyro4-1fr-30-1.5rot.mp4" controls></video>

gyro5-20fr-1.0-1.0rot.mp4 <a href="https://aquacluck.github.io/totk-tas-docs/media/gyro5-20fr-1.0-1.0rot.mp4" download>(download)</a>
<video src="https://aquacluck.github.io/totk-tas-docs/media/gyro5-20fr-1.0-1.0rot.mp4" controls></video>

gyro6-1fr-20.0-1.0rot-invisible.mp4 <a href="https://aquacluck.github.io/totk-tas-docs/media/gyro6-1fr-20.0-1.0rot-invisible.mp4" download>(download)</a>
<video src="https://aquacluck.github.io/totk-tas-docs/media/gyro6-1fr-20.0-1.0rot-invisible.mp4" controls></video>

Quirks/etc:
- I haven't figured out how to tilt up and down with angvel yet. Setting gyro rotation to east/west makes it respond to angvel.x but it rotates horizontally. Setting it to north makes it respond to angvel.z as shown above. Setting it to south nothing responds. I suspect it needs to be one of those directions tilted up or down 90°, like one of these <https://github.com/aquacluck/totk-lotuskit/blob/5b4200b31e7ef25028e5ac46ca462d56dc404ee0/src/program/script/globals.cpp#L106-L115>
- Player bow aim angular velocity seems to be more consistent while sweeping over south-ish than any other angle. Most directions have roughly 5% deviation (maybe capped near 0.1 player angvel.y? it doesnt scale with extreme speeds), it's noisy but I suspect it's just angle dependent. I'm curious if BOTW behaves similarly, seems like it could be one of those shared quirks.
- afaict gyro angular velocity behaves modulo 20 instead of being hard capped, i.e. gyro angvel 1 == 21 == 2000001 for all practical purposes, and Player angvel is also effectively limited in this manner. Gyro angvel values near this point (eg 19) will appear to move backwards, sort of like a <https://en.wikipedia.org/wiki/Stroboscopic_effect>. 10 would be the middle/breakeven point at 180°/fr, but in practice it's choppy because Player doesn't finish turning around that fast.
- the fastest stable rotation I've seen is at ~4.995 gyro angvel, or just under 90° per frame. I suspect this is just as far as Link can bowaim in a single frame before the turn animation throttles him. This speed is reported as Player.angvel.y ~= 47.0. So I'm pretty sure *actor angular velocity* is reported in radians per second: 47 rad/s * (1s/30fr) ~= 1.5666 rad/fr = π/2 rad/fr. I never bothered figuring that out before, but pretty obvious now that I see it.

