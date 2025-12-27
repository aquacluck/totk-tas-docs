## Player momentum/drag idle and jumping on a moving platform
- Link's stagger(?) animation doesn't indicate that he's being nudged across the platform or non-grounded or anything. He just does that when the platform begins moving him, and there's never any movement relative to the platform at this time.
- Landing on this level platform doesn't appear to nudge Link at all. He does move relative to the platform, but this appears to be drag which begins 5 frames into the jump. (It looks like there's a frame 6 where the platform motion "grabs" him again before drag fully "takes over" though, which is interesting.)
- The drag works symmetric front+back here, as final position is very close to starting position.
- All of this seems deterministic. Unfortunately the platform speed isn't perfectly constant.

momentum-platform-idle.mp4 <a href="../media/momentum-platform-idle.mp4" download>(download)</a>
<video src="../media/momentum-platform-idle.mp4" controls></video>

## Player momentum/drag moving off terrain ledge
- drag seems to affect player consistently in most basic movement animations, but I didn't try to derive the function/graph/etc of velocity decay
- bow aim jumps appear to preserve speed / receive no drag
- untested: shield surf preservation and dive mechanics
- (note vel drag does not stop ticking when we upwarp, that's good)
- (idk why the upwarp is rotating Link, that's bad but doesn't appear to affect speed, I prob broke something)
- hmm I think something's wrong with this crouch jump example, it's too slow, he's prob clipping the platform. Nonetheless the drag timing after frame 9 is consistent with everything else

```
walk drag:
vel |xz| 5.55255 @ 31fr // first frame of drag (frame 3 of fall)
vel |xz| 0 @ 1882fr
1851fr duration = 61.7s

sprint drag:
vel |xz| 8.097004 @ 25fr // first frame of drag? (frame 5 of fall?)
vel |xz| 5.55320 @ 873fr // sync/test point
vel |xz| 0 @ 2725fr
1852fr duration ~= 61.73s

walk+jump drag:
vel |xz| 5.552543 @ 41fr // first frame of drag (frame 20 of jump)
vel |xz| 0 @ 1892fr
1851fr duration = 61.7s

sprint+jump drag:
vel |xz| 8.097004 @ 42fr // first frame of drag (frame 22 of jump)
vel |xz| 5.553320 @ 890fr // sync/test point
vel |xz| 0 @ 2742fr
1852fr duration ~= 61.73s

throwaim+jump drag:
vel |xz| 5.397000 @ 32fr // first frame of drag (frame 21 of jump)
(frame display missing because i canceled tas to use camera, so not bothering to calc duration)

bowaim+jump drag:
drag free! (only when starting from grounded bow aim)
(i canceled tas to use camera)

crouch jump drag:
// first frame of jump @ 37fr
vel |xz| 6.309294 @ 46fr // first frame of obvious drag (frame 9 of jump)
vel |xz| 5.553349 @ 298fr // sync/test point
vel |xz| 0 @ 2150 fr
1852fr duration ~= 61.73s
```

drag-walk-small.mp4 <a href="../media/drag-walk-small.mp4" download>(download)</a>
<video src="../media/drag-walk-small.mp4" controls></video>

drag-sprint-small.mp4 <a href="../media/drag-sprint-small.mp4" download>(download)</a>
<video src="../media/drag-sprint-small.mp4" controls></video>

drag-walkjump-small.mp4 <a href="../media/drag-walkjump-small.mp4" download>(download)</a>
<video src="../media/drag-walkjump-small.mp4" controls></video>

drag-sprintjump-small.mp4 <a href="../media/drag-sprintjump-small.mp4" download>(download)</a>
<video src="../media/drag-sprintjump-small.mp4" controls></video>

drag-throwaimjump-small.mp4 <a href="../media/drag-throwaimjump-small.mp4" download>(download)</a>
<video src="../media/drag-throwaimjump-small.mp4" controls></video>

dragfree-bowaim-jump-small.mp4 <a href="../media/dragfree-bowaim-jump-small.mp4" download>(download)</a>
<video src="../media/dragfree-bowaim-jump-small.mp4" controls></video>

drag-crouchjump-small.mp4 <a href="../media/drag-crouchjump-small.mp4" download>(download)</a>
<video src="../media/drag-crouchjump-small.mp4" controls></video>

