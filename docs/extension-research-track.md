---
description: >-
  The AIRI researcher pathway — build the imaging, gravitropism, analysis and modelling
  skills to design and run simulated-microgravity experiments on the CoSE SciSpinner Max RPM.
---

# For Researchers — from skills to the microgravity RPM 🛰️🌱

This track trains you to **design, run, and analyse real astrobotany experiments in
simulated microgravity** on the **[CoSE SciSpinner Max](https://www.cosecloud.com/researchers)**
Random Positioning Machine (RPM). Each stage builds a skill; together they get you
**RPM-ready**.

!!! info "The destination: the CoSE SciSpinner Max RPM"
    The SciSpinner Max is a **3D clinostat / random positioning machine**. By continuously
    re-orienting a sample on two axes, the net gravity vector time-averages toward zero, so
    a growing seedling experiences **simulated microgravity** without leaving the bench. It
    has a **built-in 8 MP camera** for scheduled time-lapse and runs the **CoSE software**
    (Motion → *clinostat*, set the rotation rate), producing images ready for automated root
    analysis in **RootNav 2 / CyVerse**. Researchers access it via the
    [CoSE Researchers page](https://www.cosecloud.com/researchers) (spec sheet + pre-order).

## The researcher storyboard

A pathway from first principles to a publishable microgravity experiment:

| Step | You'll learn / do | Where |
|------|-------------------|-------|
| **1. Image like a scientist** | Calibrated, repeatable photography with the AstroCalibration marker | [Stage I](stage-i-scientific-photography/README.md) |
| **2. Understand the biology** | Gravitropism, auxin transport and the root auxin maximum | [Stage IV](research-stage-iv-microgreen-development-and-gravitropic-response/README.md) · [Virtual Root simulator](https://dr-richard-barker.github.io/virtual-root/) |
| **3. Quantify roots** | Root system architecture & gravitropic angle from images | [Root System Architecture with PlantCV](research-stage-iv-microgreen-development-and-gravitropic-response/root-system-architecture-with-plantcv.md) |
| **4. Design the experiment** | Controls, replication, and a testable microgravity hypothesis | see checklist below |
| **5. Run it on the RPM** | Simulated microgravity on the CoSE SciSpinner Max, with time-lapse | [Stage VI: Micro-Gravi-tropism Assays](research-stage-vi-gravitropism-assays.md) |
| **6. Analyse & share** | Automated root analysis (RootNav 2 / CyVerse), FAIR data | [Stage VI](research-stage-vi-gravitropism-assays.md) |
| **7. Model & interpret** | Explain your results with auxin-transport & root models | [Stage VII](stage-vii-modelling-of-plant-hormone-transport.md) · [VIII–XI](#the-stages) |

## Are you RPM-ready? A pre-flight checklist

Before booking SciSpinner Max time, make sure you can:

- [ ] Take **calibrated, repeatable images** with the AstroCalibration marker ([Stage I](stage-i-scientific-photography/README.md)).
- [ ] Germinate and mount seedlings on **agar plates** suited to the clinostat ([Stage VI](research-stage-vi-gravitropism-assays.md)).
- [ ] State a **clear hypothesis** and define your **1g ground control** (the same setup, *not* rotating).
- [ ] Plan **replication** (multiple plates/seedlings) and the **rotation rate** you'll test.
- [ ] Measure **root angle / length** from images ([RSA with PlantCV](research-stage-iv-microgreen-development-and-gravitropic-response/root-system-architecture-with-plantcv.md) or RootNav 2 / CyVerse).
- [ ] Have a **FAIR data plan** (methods logged, open formats, a place to share).

!!! tip "Designing a good microgravity experiment"
    The RPM removes a *directional* gravity cue — so always run a **paired 1 g control** on
    the same schedule, change **one variable** (e.g. rotation rate, species, light), and
    predict the outcome first. The [Virtual Root simulator](https://dr-richard-barker.github.io/virtual-root/)
    lets you **rehearse the hypothesis** — remove the gravity bias and watch the auxin
    asymmetry disappear before you test it on real seedlings.

## Run it: the SciSpinner Max protocol

The full step-by-step protocol — booting the machine, the CoSE software Motion/clinostat
settings, the RPM rate, time-lapse imaging, controls, and RootNav 2 / CyVerse analysis — is
in **[Stage VI: Micro-Gravi-tropism Assays](research-stage-vi-gravitropism-assays.md)**.

## The stages

| Stage | Topic |
|-------|-------|
| **V** | [Auxin and plant cloning](stage-v-auxin-and-plant-cloning.md) |
| **VI** | [Micro-gravi-tropism assays (CoSE RPM protocol)](research-stage-vi-gravitropism-assays.md) |
| **VII** | [Modelling of plant hormone transport](stage-vii-modelling-of-plant-hormone-transport.md) |
| **VIII** | [Root modelling](stage-viii-root-modelling/README.md) |
| **IX** | [Plant modelling](stage-ix-plant-modelling/README.md) |
| **X** | [Mining RNA-seq for metabolism modelling](stage-x-mining-rnaseq-for-cellular-metabolism-modelling.md) |
| **XI** | [Mining the membrane interactome database](stage-xi-mining-membrane-based-interactome-database.md) |

!!! warning "Advanced — some third-party tools may be offline"
    These stages target advanced and research audiences and rely on specialist software,
    some hosted by other labs and occasionally offline. The science and methods still stand.
    Teaching K–12? Start with the [Classroom Track (Stages I–IV)](stage-i-scientific-photography/README.md)
    and the [For Teachers](for-teachers.md) guide.
