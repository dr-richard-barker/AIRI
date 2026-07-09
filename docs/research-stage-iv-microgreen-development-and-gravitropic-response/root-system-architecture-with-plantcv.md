---
description: >-
  Turn a photo of seedling roots into real numbers — total length, tips, branches,
  and gravitropic angle — using the AIRI Root Tool. A plain-language guide for the
  classroom.
---

# Measuring Root System Architecture 🌱🪜

**Root System Architecture (RSA)** is the shape of a plant's root system — how long the
roots are, how many tips and branches they have, and which way they grow. In Stage IV you
watch roots respond to gravity; this page shows how to **measure** that response instead of
just describing it, and turn a photo into numbers you can graph.

!!! info "Great photos make great measurements"
    Root measurement only works on clean, high-contrast images. Grow roots against a plain
    background (black felt, or agar over a dark surface), keep the camera straight-on, and
    put the **[AstroCalibration marker](https://www.stickermule.com/drb2025)** flat in the
    frame — exactly as in
    [Stage I: Scientific Photography](../stage-i-scientific-photography/README.md). The
    marker does two jobs: it fixes the colours and it sets the scale (pixels → millimetres).

## How it works, in four steps

Every root-measurement tool — whether it's a simple threshold or a trained neural network —
follows the same idea:

1. **Calibrate.** Use the marker to correct colour and learn how many pixels equal one cm.
2. **Segment.** Separate the root from the background (find which pixels are "root").
3. **Skeletonize.** Thin the root down to a one-pixel centre-line — its "wiring diagram".
4. **Measure.** Walk the skeleton to add up length, count tips and branch points, and read
   the angle each root points.

You don't have to do these by hand. The **AIRI Root Tool** does all four for you.

## Use the AIRI Root Tool

!!! tip "🛰️ Open the [AstroRoot Tool](https://dr-richard-barker.github.io/astroroot/)"
    A free, browser-based tool (no install — works on a school Chromebook) that reads your
    seedling photos and returns the numbers below. Built on the open
    **[RootNav 2.0](https://github.com/robail-yasrab/RootNav-2.0)** root-tracing model.
    Your images stay on your device.

    **→ [Launch AstroRoot](https://dr-richard-barker.github.io/astroroot/)**
    · [source & guide](https://github.com/dr-richard-barker/astroroot)

    - **Single mode** — upload one photo, see the traced roots drawn on top, nudge any
      mistakes by hand, and read the measurements.
    - **Batch mode** — drop in a whole folder of photos and get one spreadsheet (CSV) with a
      row per image, ready to graph.
    - **Your images stay on your device** — nothing is uploaded to a server.

    *Until it's released, teachers comfortable with Python can use
    [PlantCV](https://plantcv.org/) directly (see the coder appendix, below).*

## What you can measure

| Trait | What it tells you |
|---|---|
| **Total root length** | Overall root growth / vigour |
| **Number of tips** | How many root ends (a proxy for branching) |
| **Number of branch points** | How bushy / branched the system is |
| **Root angles** | The **gravitropic response** — how roots reorient after the tray is turned 90° |

## Tie it back to gravitropism (Stage IV)

This is the measurement that makes Stage IV quantitative. Photograph your seedlings,
**rotate the gravity vector 90°**, then re-photograph at set times. Measure each photo and
compare the **root angles** before and after — that change *is* the gravitropic response,
now a number you can graph and share.

---

??? note "Coder appendix — do it yourself in PlantCV"
    If you'd rather run the analysis in code, [PlantCV](https://plantcv.org/) does all four
    steps. The thresholds below are **starting points** — you will need to tune them to your
    own lighting and background.

    ```python
    from plantcv import plantcv as pcv
    import numpy as np

    # 1. Read + colour-correct with the AstroCalibration marker.
    img, path, name = pcv.readimage(filename="seedling_day5.jpg")
    img_cc = pcv.transform.auto_correct_color(rgb_img=img, color_chip_size=(10, 10))
    px_per_cm = 60.0                                   # <-- calibrate from YOUR marker

    # 2. Segment the root (try LAB 'l' or 'a'; tune the threshold to your images).
    gray = pcv.rgb2gray_lab(rgb_img=img_cc, channel="l")
    mask = pcv.threshold.binary(gray_img=gray, threshold=115, object_type="dark")
    mask = pcv.fill(bin_img=mask, size=30)

    # 3. Skeletonize + prune.
    skeleton = pcv.morphology.skeletonize(mask=mask)
    pruned, seg_img, seg_objs = pcv.morphology.prune(skel_img=skeleton, size=30, mask=mask)

    # 4. Measure: length, tips, branch points, angles.
    pcv.morphology.segment_path_length(segmented_img=seg_img, objects=seg_objs)
    pcv.morphology.find_tips(skel_img=pruned)
    pcv.morphology.find_branch_pts(skel_img=pruned)
    pcv.morphology.segment_angle(segmented_img=seg_img, objects=seg_objs)
    pcv.outputs.save_results(filename="rsa_day5.json", outformat="json")
    ```

    Docs: [morphology workflow](https://plantcv.org/tutorials) ·
    [segment_path_length](https://docs.plantcv.org/en/stable/segment_pathlength/) ·
    [skeletonize](https://docs.plantcv.org/en/stable/skeletonize/) ·
    [auto_correct_color](https://docs.plantcv.org/en/stable/transform_auto_correct_color/).
    Argument names change between PlantCV versions — check the docs for your version. For the
    leaf/canopy equivalent, see
    [Green Area Index with PlantCV](../stage-iii-growth-of-microgreens-in-terrestrial-environments/green-area-index-with-plantcv.md).
