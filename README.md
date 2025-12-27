# TAS Stats+Strats for Tears of the Kingdom
- View at [https://aquacluck.github.io/totk-tas-docs/](https://aquacluck.github.io/totk-tas-docs/) for video embeds
- This project catalogs assorted data, timings, scripts, and proofs of whatever we care about, with a Hyrule Engineering inspired focus on rigor+reproducibility.
- All content is free under the conditions of [CC BY-SA](https://creativecommons.org/licenses/by-sa/4.0/)

## Player movement
- [Basic forward motion](./player-movement/basic-forward-motion.md) [(discord)](https://discord.com/channels/1086729144307564648/1327283747086925845/1327346935090249781)
- [ZL + Aiming movement+jumps](./player-movement/zl-aiming-movement-jumps.md) [(discord)](https://discord.com/channels/1086729144307564648/1327283747086925845/1334122570479571004)
- [Turn speed influences walk+run speeds differently](./player-movement/tas-circle-turnspeed.md) [(discord)](https://discord.com/channels/1086729144307564648/1117622784047190127/1325234849816252457)
- [3s cooldown on shield jump speeds](./player-movement/shield-jump-nerf.md) [(discord)](https://discord.com/channels/1086729144307564648/1105598687167664239/1327359511308275733)
- [Gyro angular velocity](./player-movement/gyro-angular-velocity.md) [(discord)](https://discord.com/channels/1086729144307564648/1327283747086925845/1347644975181201469)
- [Basic airborne drag](./player-movement/basic-airborne-drag.md) [(discord)](https://discord.com/channels/1086729144307564648/1327283747086925845/1371027114345889792)
- [AF vertical speed](./player-movement/af-vertical-speed.md) [(discord)](https://discord.com/channels/1086729144307564648/1327283747086925845/1371774226943442954)
- [AF shield surf drag](./player-movement/af-shield-surf-drag.md) [(discord)](https://discord.com/channels/1086729144307564648/1327283747086925845/1372092129911771137)
- [shield jump speed preservation from ledge](./player-movement/shield-jump-momentum.md) [(discord)](https://discord.com/channels/1086729144307564648/1117622784047190127/1371121865661218876)
- [Optimal mozdor rhythm](./player-movement/optimal-mozdor-rhythm.md) [(discord)](https://discord.com/channels/1086729144307564648/1327283747086925845/1372148530378047508)

## Weapon+Material movement
- [material throw speed (level/upward)](./weapon-material-movement/material-throw-speed.md) [(discord)](https://discord.com/channels/1086729144307564648/1327283747086925845/1334081511833600080)
- [throw speed independent from Player](./weapon-material-movement/throw-speed-uninherited.md) [(discord)](https://discord.com/channels/1086729144307564648/1327283747086925845/1334132236798132328)

## Suggested submission requirements:
- Feel free to submit info in the discord thread or as issues/PRs here
- Attach a TAS script or lotuskit AS file reproducing (at least) the important parts of your submission
- Attach an embeddable mp4 clip of your submission. Please try [HandBrake](<https://github.com/HandBrake/HandBrake/releases>)'s 1080p30 options, it can fit several minutes in under 50MB with good-enough quality. I also recommend OBS to record and [LosslessCut](<https://github.com/mifi/lossless-cut/releases>) to trim your files first.
- Game version must be obvious: Either from lotuskit's display, or emu title bar, or home menu version dialog, or mentioned in your message.
- Explain any prereqs or prep for your submission, either in your message or in script comments
- Source data must be onscreen in either realtime or with a frame latency you can prove:
    - Run [lotuskit](<https://github.com/aquacluck/totk-lotuskit/releases>) (which draws *sometime* every frame -- drawn data *could* straddle 2 frames if draw happens "mid-frame", but for text this would visibly flicker the layout if the draw "subframe" wanders, as it would force/drop varying text into prev/next frames)
    - Or find another way to meet this standard (eg correlate a dump or tool output with certain frames in the video, or within some margin)
    - If you must infer/guess/round any unverifiable precision or other info: Explicitly call this out. Explain why it can't be helped. Explain your suspected margin of error/etc.
- Results must be reproducible, don't **submit** freak occurrences -- but feel free to post or chat about them! Maybe not perfectly or every time (please explain what you can) but reproducible enough.
- Sometimes tas::inputs are appropriate to show menuing/etc, sometimes you should use cheats to get to the point + iterate quickly, sometimes both
- Useful/interesting scripts welcome, not everything needs to be a proof!
- Glitch reference implementations welcome!

## An EX-King-Sized Thanks to:
- SciresM and shadow for Atmosphere and exlaunch respectively, I couldn't read data from the game without them
- dt13269 and Watertoon for their work reverse engineering TOTK, I'd have a hard time with the game's code without them
- TOTK Speedrunning discord for their massive knowledge of glitches+strats, and Aergyl especially as a major TAS contributor and overall TOTK wizard
- Zelda Data Collection & Research discord for their extensive documentation of general game data
- The Hyrule Engineering discord for partial inspiration
- Nintendo for making games so good that people spend their time doing this with them

