a look at **shield jump speed preservation** after crouch jump:
- The earliest working frame for the shield jump is ~~always best afaict~~ best for speeds below the 22.2m/s shield jump speed cap (thanks aergyl). Drag/decay begins immediately after the crouch jump completes.
- Delaying 0.5s in this example would cost you ~0.045m/s of preserved speed, or ~2.7m over 60s. So this isn't much at all, probably not a concern for most categories.
- The earliest frame it will work seems to vary based on speed or terrain or something idk -- using i=6 was the frame that worked soonest here given the "hold forward 25 frames" spacing.
- 11.595459m/s was my best speed at this location, but maybe a different ledge can go faster?
- Link's spacing from the edge seems to be important, I think because this determines which frame of the crouch jump gets interrupted by falling and thus the max preservable speed. The "hold forward 25 frames" spacing used here was the best distance for this position.
- Different terrain features near the edge might behave differently, same with wings, idk I haven't tested these things yet. I'm not highly confident about any of this, this was just a quick test.

drag-bowcrouchjump-shieldsurf-timing.mp4 <a href="../media/drag-bowcrouchjump-shieldsurf-timing.mp4" download>(download)</a>
<video src="../media/drag-bowcrouchjump-shieldsurf-timing.mp4" controls></video>

