## Material throw speed
- covers throwing level to upward, in arbitrary increments of 75% stick frames (TODO measure LookAtCamera angle)
- covers ruby, topaz, bomb. Bomb behaves slightly different on impact.
- not covered: downward angles, acceleration/drag/terminal effects, speed inheritance

- **level/default:** 8fr windup, then 29.885m/s xz, 1.648m/s up starting 97fr.
     - 16fr later at 113f is final frame of uninterrupted flight, with (I think position is a frame late) with 18.15m-18.25m travel (bomb appears to go slightly further? but this might be its blast mechanics)
- **best distance:** around i=25 3950fr, throw 23.231m/s xz 17.904m/s up, ~50fr airtime, ~39.2m travel
- **max height:** ~10166fr first frame 7.764m/s xz, 28.011m/s up.
    - to ~10167fr final or 69fr airtime, ~18.55m travel, again bomb seems to bounce a bit farther

- throws are constant xz speed at a given y angle (TODO compare more objects/masses/shapes/etc?)
- velocity damped to 10% on impact
- these objects bounce 2fr during explosion before halt/destruction/???
- bomb explosion appears 1fr sooner than gems (TODO numbers suggest this is only visual -- check hitbox timing?)
- video is potato quality and not *quite* synced, sorry
- [throwspeed-up.as](https://github.com/aquacluck/totk-tas-docs/blob/main/scripts/throwspeed-up.as) [(download)](../scripts/throwspeed-up.as)

throwspeed-mergeup-small.mp4 <a href="../media/throwspeed-mergeup-small.mp4" download>(download)</a>
<video src="../media/throwspeed-mergeup-small.mp4" controls class="large"></video>

