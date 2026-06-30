---
description: >-
  A step-by-step protocol for measuring the Green Area Index of microgreens from a
  top-down photo, using PlantCV and the AstroBotany AstroCalibration marker.
---

# Green Area Index with PlantCV 🟢📐

**Green Area Index (GAI)** tells you how much green canopy is covering your growing
area. It rises as your microgreens grow, so measuring it over several days gives you a
**growth curve** — a real, quantitative result you can compare between species, light
levels, or watering treatments.

This protocol turns a single **top-down photo** of a tray into a GAI number using
[PlantCV](https://plantcv.org/) (free, open-source plant computer vision) and the
**AstroCalibration marker** (the AstroBotany Spectrum sticker) for size and colour
calibration.

!!! info "What GAI means here"
    From one top-down photo you measure the **projected green area** ÷ the **ground
    (tray) area**. This is really *canopy cover* (0 = bare soil, 1 = fully covered).
    True GAI can exceed 1 when leaves overlap, which a single photo can't see — but for
    the classroom, canopy cover is an excellent, honest proxy that tracks biomass well.
    Take photos at the **same height and angle** each day so they stay comparable.

## What you'll need

- Top-down photos of your microgreen tray, each with an **[AstroCalibration sticker](https://www.stickermule.com/drb2025)**
  flat and in frame (see [Stage I: Scientific Photography](../stage-i-scientific-photography/README.md)).
- A computer with **Python** and **PlantCV** installed:
  ```bash
  pip install plantcv
  ```
  (Full install options: [PlantCV installation](https://plantcv.readthedocs.io/en/stable/installation/).)
- The known size of your marker's colour chips (in mm) — printed on the product page.

## The idea, in plain language

1. **Colour-correct** the photo using the marker, so greens look consistent every day.
2. **Find the green pixels** (the canopy).
3. **Convert pixels → cm²** using the marker's known size.
4. **Divide** green area by the tray's ground area to get GAI.

## Step-by-step

```python
import numpy as np
from plantcv import plantcv as pcv

# 1. Read the top-down tray photo
img, path, name = pcv.readimage(filename="tray_day8.jpg")

# 2. Colour-correct using the AstroCalibration marker.
#    auto_correct_color finds the colour card automatically.
#    Set color_chip_size to your sticker's chip size in mm, e.g. (10, 10).
img_cc = pcv.transform.auto_correct_color(rgb_img=img, color_chip_size=(10, 10))

# 3. Set the scale (pixels per cm). The robust classroom method: measure your
#    marker's known length in pixels once (e.g. in PlantCV or ImageJ) and set it here.
px_per_cm = 60.0          # <-- calibrate this from YOUR marker

# 4. Segment the green canopy. The LAB 'a' channel separates green plant tissue
#    from soil and background; green tissue is "dark" in this channel.
a = pcv.rgb2gray_lab(rgb_img=img_cc, channel="a")
green = pcv.threshold.binary(gray_img=a, threshold=120, object_type="dark")
green = pcv.fill(bin_img=green, size=50)     # remove small specks of noise

# 5. Restrict measurement to the growing area of the tray.
roi = pcv.roi.rectangle(img=img_cc, x=200, y=150, w=1200, h=900)
green = pcv.roi.filter(mask=green, roi=roi, roi_type="partial")

# 6. Measure and compute Green Area Index.
green_cm2  = np.count_nonzero(green) / (px_per_cm ** 2)
ground_cm2 = (1200 * 900) / (px_per_cm ** 2)        # the ROI area in cm^2
gai = green_cm2 / ground_cm2                          # 0 = bare, ~1 = full cover

print(f"Green area = {green_cm2:.1f} cm^2 | Ground = {ground_cm2:.1f} cm^2 | GAI = {gai:.2f}")
```

!!! warning "Tune two numbers for your setup"
    The `threshold=120` and the ROI box (`x, y, w, h`) are **examples**. Display the
    `a` channel and the `green` mask while you adjust them so the mask covers the plants
    and nothing else. Once they work for your camera setup, keep them the same for every
    photo in a series.

## Reading your results

- **GAI near 0** → mostly bare growing media (early days).
- **GAI rising over time** → your canopy is filling in. Plot GAI vs. day to see the
  growth curve.
- **GAI plateauing near 1** → the tray is fully covered (from the top); switch to fresh
  weight/biomass to keep measuring growth after this point.

## Make it a real experiment

- **Time series:** photograph the same tray on days 4, 8, and 12 and plot GAI vs. day.
- **Compare:** run two species (or two light levels) side by side and compare their
  GAI curves.
- **Share:** record your GAI values, the marker size, `px_per_cm`, and threshold in your
  science journal so others can reproduce your analysis (this is what makes it FAIR).

## Going deeper

- PlantCV colour correction: [auto_correct_color](https://docs.plantcv.org/en/stable/transform_auto_correct_color/)
- PlantCV size analysis: [analyze.size](https://docs.plantcv.org/en/stable/analyze_size/)
- PlantCV thresholding, ROIs & more: [PlantCV tutorials](https://plantcv.org/tutorials)

*Exact function arguments and output names can change between PlantCV versions — check
the docs above for the version you installed. The next stage applies the same calibrated
imaging to roots: [Root System Architecture with PlantCV](../research-stage-iv-microgreen-development-and-gravitropic-response/root-system-architecture-with-plantcv.md).*
