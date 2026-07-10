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
    · [dashboard](https://dr-richard-barker.github.io/astroroot/dashboard.html)

    No sign-in, no upload — everything runs in the browser tab and your images stay on the
    device. It also comes with **real NASA spaceflight demo images** built in — ISS root plates
    from the **ABRS** time-lapse and the **APEX-03** skewing-mutant experiment (Col-0, WS, *spr1*,
    *sku5*, flight vs ground) — so you can try the whole workflow before you take your own photos.

## What the tool can do

Start simple, then add only the pieces your experiment needs.

=== "Measure one photo"

    Open a photo (or a demo image) and press **Trace roots** — the tool finds the roots, draws
    them on top, and reports the numbers. Choose the **classical** engine (works instantly) or the
    **RootNav 2.0 AI** model. Anything it gets wrong you can fix with the **Manual trace** editor
    (RootNav 1-style): drag, add or delete the dots along a root, branch a lateral off a parent,
    or use **Route** — click a root's start and its tip and the tool draws the line along it for
    you.

=== "Set the scale & fix colours"

    Put an **[AstroCalibration marker](https://www.stickermule.com/drb2025)** in the shot and pick
    it under **Marker** → *Auto-detect*. The tool reads the card to turn pixels into **millimetres**
    and to colour-correct the photo — the same idea as PlantCV's colour-card detection.

=== "Remove the petri-dish grid"

    Growing on gridded plates? Tick **remove plate grid** and the etched grid is filtered out
    before measuring, with a before/after preview. It's not always perfect — you can still fix the
    trace by hand.

=== "Compare genotypes (regions)"

    If one image holds two genotypes (say one that skews and one that doesn't), click
    **✏️ Draw region**, box each area and name it. Each region is measured separately, so you can
    compare — e.g. the skewing line's angle vs the straight one's.

=== "Count individual plants (seeds)"

    Tell the tool how many **plants** are in the image and mark where each **seed** was sown (the
    root's starting point) — or let it auto-place them. You then get a row **per plant**, including
    its **skew** (how far its root drifts left/right from the seed). If you also drew genotype
    regions, each plant is automatically labelled with its genotype.

=== "Track a whole time-lapse (batch)"

    Photograph the plate every day, then in **Batch** load the whole folder. The regions and seeds
    you set once are applied to **every frame**, giving each plant's growth **over time**.

=== "See & share the results (dashboard)"

    The **[dashboard](https://dr-richard-barker.github.io/astroroot/dashboard.html)** collects every
    measurement you save: summary stats, charts, a searchable table, **group summaries** (compare
    genotypes), and a **per-plant trajectory** graph (each plant, and the genotype average, over
    the days). Download it all as a spreadsheet — or, if your teacher sets it up, pool the whole
    class's numbers together.

## What you can measure

| Trait | What it tells you |
|---|---|
| **Total root length** | Overall root growth / vigour |
| **Number of tips & branch points** | How branched / bushy the root system is |
| **Root angle from vertical** | The **gravitropic response** — how roots reorient after the tray is turned 90° |
| **Skew (per plant)** | Which way, and how far, each root drifts from straight down — the trait that separates a *skewing* genotype from a straight one |
| **Length / diameter / surface / volume, convex-hull, tortuosity** | Full root-architecture traits when you import a traced **RSML** file (matching the [archiDART](https://github.com/archidart/archidart) trait set) |
| **Root depth-distribution** | How much root sits at each depth — a density-vs-depth profile you can chart and compare between plants |
| **Estimated laterals** *(AI guess)* | Laterals overlap in a photo, so the tool also **estimates** the number of laterals, their angle, and the "lateral fraction" from the root's shape. Treat these as a **helpful estimate, not an exact count** — the tool tells you so. |

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
