## ZL + Aiming movement+jumps
- zlspeed-handsfreewalk: 5.555m/s forward with 5.4m/s jump, 3.444m/s back with 4.5m/s jump, 3.444m/s side with 5.4m/s jump
- zlspeed-bowwalk (identical with any weapon or bow drawn): same ^ forward, 3.75m/s back with 4.5m/s jump, 3.75m/s side with 5.4m/s jump (side+back speed boost on ground)
- weapon throw aim: ^ identical to drawn weapon ZL walk
- bow aim: ^ identical to drawn weapon ZL walk
- material throw aim: identical to handsfree ZL walk (no speed boost)
- material carry: ^ identical no boost

- representative script attached, they're essentially all the same
- tldr anything involving an active weapon grants a side/back grounded speed boost over the same basic walk
- crouch walks (not shown) are an exception -- sneak speed does not receive speed boosts
    - (although ZL/etc forward crouch walks are still slower 2.11m/s -> 1.5m/s as seen in basic forward movement https://discord.com/channels/1086729144307564648/1327283747086925845/1327346935090249781 )
  - (see also https://discord.com/channels/1086729144307564648/1108835328770457661/1364831458555990097 directional crouch jumps: left 11.30 right 11.32 forward 11.60 back 9.27)

[4dirjump.as](https://github.com/aquacluck/totk-tas-docs/blob/main/scripts/4dirjump.as) [(download)](../scripts/4dirjump.as)

zlspeed-handsfreewalk.mp4 <a href="https://aquacluck.github.io/totk-tas-docs/media/zlspeed-handsfreewalk.mp4" download>(download)</a>
<video src="https://aquacluck.github.io/totk-tas-docs/media/zlspeed-handsfreewalk.mp4" controls></video>

zlspeed-bowwalk.mp4 <a href="https://aquacluck.github.io/totk-tas-docs/media/zlspeed-bowwalk.mp4" download>(download)</a>
<video src="https://aquacluck.github.io/totk-tas-docs/media/zlspeed-bowwalk.mp4" controls></video>

zlspeed-2handwalk.mp4 <a href="https://aquacluck.github.io/totk-tas-docs/media/zlspeed-2handwalk.mp4" download>(download)</a>
<video src="https://aquacluck.github.io/totk-tas-docs/media/zlspeed-2handwalk.mp4" controls></video>

zlspeed-spearwalk.mp4 <a href="https://aquacluck.github.io/totk-tas-docs/media/zlspeed-spearwalk.mp4" download>(download)</a>
<video src="https://aquacluck.github.io/totk-tas-docs/media/zlspeed-spearwalk.mp4" controls></video>

zlspeed-swordwalk.mp4 <a href="https://aquacluck.github.io/totk-tas-docs/media/zlspeed-swordwalk.mp4" download>(download)</a>
<video src="https://aquacluck.github.io/totk-tas-docs/media/zlspeed-swordwalk.mp4" controls></video>

weaponthrowspeed-aimwalk.mp4 <a href="https://aquacluck.github.io/totk-tas-docs/media/weaponthrowspeed-aimwalk.mp4" download>(download)</a>
<video src="https://aquacluck.github.io/totk-tas-docs/media/weaponthrowspeed-aimwalk.mp4" controls></video>

bowspeed-aimwalk.mp4 <a href="https://aquacluck.github.io/totk-tas-docs/media/bowspeed-aimwalk.mp4" download>(download)</a>
<video src="https://aquacluck.github.io/totk-tas-docs/media/bowspeed-aimwalk.mp4" controls></video>

throwspeed-aimwalk.mp4 <a href="https://aquacluck.github.io/totk-tas-docs/media/throwspeed-aimwalk.mp4" download>(download)</a>
<video src="https://aquacluck.github.io/totk-tas-docs/media/throwspeed-aimwalk.mp4" controls></video>

materialcarry-walk.mp4 <a href="https://aquacluck.github.io/totk-tas-docs/media/materialcarry-walk.mp4" download>(download)</a>
<video src="https://aquacluck.github.io/totk-tas-docs/media/materialcarry-walk.mp4" controls></video>

