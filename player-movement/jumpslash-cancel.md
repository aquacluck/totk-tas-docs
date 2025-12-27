### Jump -> Jumpslash Cancel height timing
- 5 or 6 (lag?) frames between jump and jc yields max height 1.784912 m
- (~2.6x the unassisted jump height 0.676758 m)

### Jumpslash Cancel -> Jumpslash height timing
- 7 frames between jc and jumpslash yields max height 2.893066 m
- (~4.3x unassisted jump height)

jc-heights-small.mp4 <a href="https://aquacluck.github.io/totk-tas-docs/media/jc-heights-small.mp4" download>(download)</a>
<video src="https://aquacluck.github.io/totk-tas-docs/media/jc-heights-small.mp4" controls></video>

jc-jumpslash-heights-small.mp4 <a href="https://aquacluck.github.io/totk-tas-docs/media/jc-jumpslash-heights-small.mp4" download>(download)</a>
<video src="https://aquacluck.github.io/totk-tas-docs/media/jc-jumpslash-heights-small.mp4" controls></video>

```
ground 2386.197998
i=0 normal jump 2386.874756 (0.676758 m)
i=1 2387.660645
i=2 2387.789551
i=3 2387.886230
i=4 2387.950684
i=5 2387.982910 (1.784912 m)
i=6 2387.982910
i=7 2387.950684
i=8 2387.886230


fix i=5 jump frame, now testing subsequent jumpslash after jc:
i=2 2388.640137
i=3 2388.794922
i=4 2388.917236
i=5 2389.007324
i=6 2389.065430
i=7 2389.091064 (2.893066 m)
i=8 2389.084717
i=9 2389.045898
i=10 2388.975098
```

