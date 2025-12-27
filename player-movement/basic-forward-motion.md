### Player basic forward movement
- covers: walk, crouch, sprint, ZL variants, exhaustion
- not covered: shield jumps+surfs, dives, throw/etc aims, speed modifiers, non-100% analog values, in-depth acceleration

doBasicGroundedForward
- ZL walk: ~5.55m/s constant, instant from standstill after 3(?) frame shield windup
- normal walk: ~5.55m/s constant (TODO: same delay from standstill, not shown)
- sprint: 8.1m/s constant, 2 frame acceleration from walking (TODO: test acceleration from standstill)
- exhausted walk: ~3.55m/s constant, 6 frame deceleration from sprinting (TODO: how many transitions into exhaustion exist?)
- exhausted ZL walk: ~4.30m/s constant, instant in walk after 3(?) frame shield windup
- exhausted crouch walk: ~1.64m/s constant, 3 frame acceleration
- exhausted ZL crouch walk: ~1.24m/s constant, weird 4 frame deceleration with 1st frame exceeding 1.7m/s
- ZL crouch walk: 1.5m/s constant, 2 frame acceleration from stam recovery
- crouch walk: ~2.11m/s constant, 3(?) frame delay from ZL

tas-doBasicGroundedForward-small.mp4 <a href="https://aquacluck.github.io/totk-tas-docs/media/tas-doBasicGroundedForward-small.mp4" download>(download)</a>
<video src="https://aquacluck.github.io/totk-tas-docs/media/tas-doBasicGroundedForward-small.mp4" controls class="small"></video>

tas-doBasicJumpsForward-small.mp4 <a href="https://aquacluck.github.io/totk-tas-docs/media/tas-doBasicJumpsForward-small.mp4" download>(download)</a>
<video src="https://aquacluck.github.io/totk-tas-docs/media/tas-doBasicJumpsForward-small.mp4" controls class="small"></video>

tas-doCrouchJumpsForward-small.mp4 <a href="https://aquacluck.github.io/totk-tas-docs/media/tas-doCrouchJumpsForward-small.mp4" download>(download)</a>
<video src="https://aquacluck.github.io/totk-tas-docs/media/tas-doCrouchJumpsForward-small.mp4" controls class="small"></video>

script: [tas-basicForwardMovement.as](https://github.com/aquacluck/totk-tas-docs/blob/main/scripts/tas-basicForwardMovement.as) [(download)](../scripts/tas-basicForwardMovement.as)

doBasicJumpsForward
- walking: instant ~7.42m/s velocity up, forward velocity untouched until landing, then ~halved (TODO?) then 6(?) frames recovery acceleration
- ZL walking: instant ~7.54m/s velocity up, forward velocity reduced 5.55->5.4 during jump, forward velocity zeroed upon landing, 6(?) frames then instant recovery to 5.55
- releasing ZL on jump cancels the jump, no effect on speed
- sprinting: instant ~8.05m/s velocity up, forward velocity untouched until landing, then 8.1->3.6 then 7 frames recovery to 8.1
- sprinting with ZL: instant downgrade to walking equivalent speeds (5.4 forward), forward velocity zeroed upon landing, 6(?) frames then 2 frame recovery 0 -> 3 -> 8.1
- sprinting releasing ZL on jump: identical to normal sprint
- exhausted walk: instant ~6.88m/s velocity up, forward 3.55 -> 2.08 on landing with interesting 8 frame recovery spiking at 4.42 and back to 3.55
- exausted ZL walk: instant ~7.54m/s velocity up, forward speed upgraded to 5.4 (ZL jump), zeroed upon landing, 6(?) frames instant recovery to 4.3
- exausted releasing ZL on jump: no effect

doCrouchJumpsForward
- normal: peak ~11.6m/s forward, acceleration is not instant
- ZL, release ZL, exhausted: all seem identical ^

