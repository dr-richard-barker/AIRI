---
description: >-
  A step-by-step protocol for measuring root system architecture (root length, tips,
  branches, and gravitropic angle) with PlantCV and the AstroCalibration marker.
---

# Root System Architecture with PlantCV 🌱🪜

**Root System Architecture (RSA)** is the shape and structure of a plant's root system —
how long the roots are, how many tips and branches they have, and which way they grow.
In Stage IV you watch roots respond to gravity; this protocol lets you **measure** that
response instead of just describing it.

It uses [PlantCV](https://plantcv.org/) and the **AstroCalibration marker** (the
AstroBotany Spectrum sticker) to turn a photo of seedlings on agar or filter paper into
real numbers: total root length in centimetres, the number of root tips and branch
points, and the **gravitropic angle**.

!!! info "Great photos make great measurements"
    RSA analysis only works on clean, high-contrast images. Grow roots against a plain
    background (black felt, or agar over a dark surface), keep the camera straight-on,
    and put the AstroCalibration marker flat in the frame — exactly as in
    [Stage I: Scientific Photography](../stage-i-scientific-photography/README.md).

## What you'll need

- Photos of seedlings with visible roots, each with an **[AstroCalibration sticker](https://www.stickermule.com/drb2025)** in frame.
- **Python + PlantCV** installed:
  ```bash
  pip install plantcv
  ```
- The marker's chip size in mm (for calibration).

## The idea, in plain language

1. **Colour-correct** and **calibrate scale** using the marker.
2. **Separate the root** from the background (segmentation).
3. **Skeletonize** the root into a thin centre-line.
4. **Measure** the skeleton: total length, tips, branches, and angles.

## Step-by-step

```python
from plantcv import plantcv as pcv

# 1. Read the seedling photo and colour-correct with the AstroCalibration marker.
img, path, name = pcv.readimage(filename="seedling_day5.jpg")
img_cc = pcv.transform.auto_correct_color(rgb_img=img, color_chip_size=(10, 10))

# 2. Set the scale (pixels per cm) from your marker's known size.
px_per_cm = 60.0          # <-- calibrate this from YOUR marker

# 3. Segment the root from the background. Try the LAB 'a' or 'l' channel and pick the
#    one that makes the root stand out, then threshold to a black-and-white mask.
gray = pcv.rgb2gray_lab(rgb_img=img_cc, channel="l")
mask = pcv.threshold.binary(gray_img=gray, threshold=115, object_type="dark")
mask = pcv.fill(bin_img=mask, size=30)        # remove specks

# 4. Skeletonize the root into a one-pixel-wide centre-line, then split into segments.
skeleton = pcv.morphology.skeletonize(mask=mask)
pruned, seg_img, seg_objs = pcv.morphology.prune(skel_img=skeleton, size=30, mask=mask)

# 5. Measure architecture.
#    Total length: sum of every segment's path length (saved to pcv.outputs).
pcv.morphology.segment_path_length(segmented_img=seg_img, objects=seg_objs)
#    Tips (root ends) and branch points (where laterals join).
tips     = pcv.morphology.find_tips(skel_img=pruned)
branches = pcv.morphology.find_branch_pts(skel_img=pruned)
#    Gravitropic direction: the angle each segment points (relative to vertical).
pcv.morphology.segment_angle(segmented_img=seg_img, objects=seg_objs)

# 6. Save all measurements to a file you can open in a spreadsheet.
pcv.outputs.save_results(filename="rsa_day5.json", outformat="json")
```

!!! tip "Quick total-length shortcut"
    For a fast estimate without segment objects, the number of white pixels in the
    skeleton ≈ root length in pixels:
    ```python
    import numpy as np
    root_length_cm = np.count_nonzero(skeleton) / px_per_cm
    print(f"Approx. total root length: {root_length_cm:.1f} cm")
    ```

## What you can measure

| Trait | What it tells you |
|---|---|
| **Total root length** | Overall root growth / vigour |
| **Number of tips** | How many root ends (a proxy for branching) |
| **Number of branch points** | How bushy / branched the system is |
| **Segment angles** | The **gravitropic response** — how roots reorient after the tray is turned 90° |

## Tie it back to gravitropism (Stage IV)

This is the measurement that makes Stage IV quantitative. Photograph your seedlings,
**rotate the gravity vector 90°**, then re-photograph at set times. Run this protocol on
each photo and compare the **segment angles** before and after — that change *is* the
gravitropic response, now expressed as a number you can graph and share.

## Going deeper

- PlantCV morphology workflow: [PlantCV tutorials](https://plantcv.org/tutorials)
- Segment length: [segment_path_length](https://docs.plantcv.org/en/stable/segment_pathlength/)
- Skeletonize: [morphology.skeletonize](https://docs.plantcv.org/en/stable/skeletonize/)
- Colour correction: [auto_correct_color](https://docs.plantcv.org/en/stable/transform_auto_correct_color/)

*Function arguments and output names can change between PlantCV versions — check the
docs for the version you installed. For the leaf/canopy equivalent, see
[Green Area Index with PlantCV](../stage-iii-growth-of-microgreens-in-terrestrial-environments/green-area-index-with-plantcv.md).*
