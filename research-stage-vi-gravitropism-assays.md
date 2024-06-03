# Stage VI: Gravitropism assays (Needs work)

### **Introduction**

This stage of this program focuses on the effects that microgravity has on both the physiology and the genetic expression of plant biology. As was outlined in stage II, plant biology is rudimentary dependent on gravity as it directs both the directional growth of shoots and roots. Specialized cells in plants used organelles called statoliths to direct the directional growth of plants by directing changes in the gravity vector and thus causing or limiting cellular elongation due to fluctuations in the growth hormone, auxin.

On Earth, it is challenging to achieve a prolonged state of microgravity. However, it is possible to “confuse” plants into developing as if they were in actual microgravity. One way to achieve this is by having a consistent change in the gravity vector. When in microgravity, statoliths continue to detect changes in gravity. However, in microgravity it becomes less obvious where it is up or down. This particular stressor in microgravity can be simulated in plants through the use of specialized devices known as “clinostats”. These devices continually rotate the organism so it never experiences a gravity vector. In this section, participants will conduct an experimental cycle using a selected microgreen, grown in a specialized clinostat that simulates the effects of microgravity on a single axis.

**Length of Stage: \~ 7 Days**

**Supplies:**

* CoSE Gravity Chamber
* USB keyboard
* USB Mouse
* Monitor with HDMI input
* 90 x 20 mm plastic petri dish dish (two per observation group)
* Plant grow Media
* Phytagel / Gelrite / Agar / Gelatin
* Linsmaier Skoog (LS) salts
* Selected Microgreen seeds (Mizuna is a suggested choice for first time observations)
* 70% Ethanol
* Pipettes
* Toothpicks
* Microcentrifuge Tubes (or small plastic containers/cups)
* Filter paper
* Micropore Medical Tape



### **Experimental Variable**

* **Gravitropic stimuli:** On the 4th day of observations, (half of the total amount of plates seeded) rotate 90 degrees.
* Take photos every 15min for 6 hours.
* From the 5th day until the 14th day, record the differences between the growth patterns of the roots in both plate types. (Control, Experimental)



**Advanced automated image analysis in the cloud**

**Goal:** Reduce human induced variability and analysis more variables

* Access to the CoSE Gravity Chamber, SciSpinner Max or images of comparable quality (8MP PiCam) allows automated analysis by RootNav2 in the CyVerse cloud discovery environment.
* Images of the roots are converted from JPG to RSML files by RootNav2/SmartRoot.
* These data can then be visualized using the ArchiDart R-shiny application.
* The advanced researchers will then perform deeper analysis using comtomized R-codes developed in R-studio.

### **Microgreen Microgravity Simulation: CoSE Gravity Chamber Protocol**

**Option 2: (Advanced Arabidopsis Spaceflight Media):**

* Measure out 2.36g LS salts into a container of 1L of deionized water & stir until ts dissolved into solution.
* Measure 10g phytagel, 5 g into 2 different bottles.
* Pour the mixed solution into the bottles, 500 mL each.
* Autoclave the bottles for 30 minutes (Kitchen pressure cookers).
* Let rest/cool for another 15 minutes.
* Pour out onto dishes.
* Let plates set for 20 minutes.
* Tap the side of the plate to make sure it’s set.
  * Put lids back on plates and store in a cold room or go straight to sow seeds.
* Sterilizes seeds, dishes, and toothpicks (2x) following the standard sterilization protocol provided in this guide.
* Select microgreen seeds to be tested.
* After sterilization, use a toothpick to set a row of 4 to 6 seeds along the center of the plate.
* Gently press on the seeds down into the media, making sure they adhere to the media without crushing the seeds.
* Attach a piece of filter paper to the inside of the lid so as to cover the entire surface area. (any color will work, however, black is the best for photo imaging.
* After placing the lid on the plate, seal the perimeter of the plate with a single layer of micropore tape.
* Place the sealed plate on the gravitational chamber’s specimen stage. The lid should be facing the stage, media should be facing out towards the camera.
* Close the gravitational chamber firmly.
* Plug in the USB keyboard, mouse and HDMI cable from the device to a monitor
  * or control with VNC software.
* Once booted up, open the “CoSE software” application
* Under the “Lighting Tab”set the brightness to 50%, Red 50%, Green 50%, Blue 50% then click “confirm". This setting will determine the color and brightness of your experiment. Make adjustments as needed but make sure to note specifications in metadata.
* Under the “Motion” tab, select “clinostat”.
* Make sure the RPM rate is set at 5 RPM
* Click “confirm”
* Close the chamber and set it on a stable surface
* Have the experimental cycle run for 5-7 days
* A control study can be conducted in two ways
  * Repeat the trial without running the clinostat rotational stressor
  * A second way can be run simultaneously. Prepare a plate with seeds then stand vertically under an LED light source. (Try to match the lighting conditions of the chamber as much as possible, note the control conditions in datasheet)
* Photograph (using the CoSE camera) or a different camera every day.

### **Stage VI: Data Collection Protocol**

* Make sure to photograph experimental and control specimens daily.
  * If using the built-in CoSE camera, make sure photos are either scheduled or manually taken at the same time.
  * Sample should be facing the same orientation every time.
  * If photos are taken using a different capturing method it is important to keep all conditions constant.
    * Lighting
    * Distance
    * Angle
  * Take note of the following data points in data log/included spreadsheet
    * Date and Time of observation
    * Local elevation
    * Day roots emerge
    * Day stem emerges
    * Total average length of specimens per plate
    * Stem and leaf coloration
    * Stem directional growth
    * Root health. Roots should be white. any sign of coloration (brown or yellow) or curling roots are signs of root health deterioration.
  * Photo analysis should focus on:
    * Root architectural patterns
    * Coloration variance
    * Morphological variation due to gravitational stressor/light variation

### **Experimental Conditions to be Explored**

For experimental data to be significant, it needs to be based on repetitive trials. For this reason, once a trial is completed, it should be repeated 2-4 more times.

* To conserve time, specimens could be grown outside of the chamber until roots begin to emerge. Once roots have emerged, an experimental trial can be run in as little as three days. Stagger seeding your plates so that once a trial is complete, the following one can commence at relatively the same point in development.
* Significant experimental variables to replicate
  * Lighting Color Variation (EX: Growing specimens under red light instead of white light)
  * Growing Specimens under no light
  * Varying gravitropic stresser (alternate days active)
  * Changing the RPMs to see when the plant can/can't perceive gravity.
  * Measure the presentation time (Barker et al., 2016 Methods in molecular biology chapter. Link coming soon).
* All experimental protocols should be logged in the lab sheet/log

### **STAGE VI Summary and Application Discussion on the impacts of gravity on plant development**

* Based on the prior investigations; what are possible developmental/engineering challenges to growing microgreens in microgravity.
* How can the morphological differences observed affect essential processes in microgreen development? (EX: nutrient intake, gas exchange)

**Experimental Design**

* Negative phototropism: Roots utilize a mechanism called negative phototropism to orient root growth away from light sources.
* How can lighting parameters be used to affect the direction of root growth within the gravity chamber?

### **2D clinostat Methods Barker et al., methods in plant biology**

**Stage V.I: Measure Sensitivity to Gravity Using a 2D Clinostat**

1. Pour molten 1% agar containing ½ LS salts into petri plates in a laminar flow cabinet and allow it to harden.
2. Submerge Arabidopsis (or microgreen) seeds for 15 min in 70% ethanol to surface sterilize them.
3. Sow seeds horizontally on the agarose gel and seal plates (Note 2).
4. Store the plates at 4oC for 3 days in darkness provided by wrapping the plates in aluminium foil.
5. Place plates vertically in the controlled environment (CE) for 4 days.
6. Remove plates from the CE and scan the plates to create 600dpi JPEG images (Note 3).
7. Leave the plates vertical for 1 hour in darkness.
8. Gravitationally stimulate the seedlings by rotating the plates 90 degrees, and incubating in darkness for 10, 20 or 30min (Note 4).
9. Rotate the plates in the clinostat at 1 revolution per minute (RPM) for 4 hours.
10. Remove from the clinostat then scan again.
11. Align the pre- & post-rotation scans next to each other using Adobe Photoshop or similar software.
12. Measure the angle of initial root tip curvature developed after transfer to the clinostat (Note 5, figure 1) (using RootNav or Smart Root).
13. For each gravi-stimulation time, quantify and plot the average angle of curvature with associated variance, fit the corresponding data with L and H model curves as defined in Perbal _et al_., (2002) \[8], and use these models to calculate the presentation time (L model) and the sensitivity score (H model).

<figure><img src="https://lh7-us.googleusercontent.com/C69n_kte7D8cIS20JWBOTehZPmeAwg791KmZ0hCRjIUA6Yytujc0VmnagTfPh_DrRFC6zhA330DeeXKfKn5TSnf7qbTZhWF0IPCz07tv3cTaTHmHaqal7DWKc5ceh8m4yt-hrWC981gKUrBFqWGWhA" alt=""><figcaption></figcaption></figure>

<figure><img src=".gitbook/assets/image (13).png" alt=""><figcaption><p>Empty clinostat from CoSE</p></figcaption></figure>



<figure><img src=".gitbook/assets/image (14).png" alt=""><figcaption><p>2D clinsotat with control plates. </p></figcaption></figure>

### Stage V Protocols for microgravity simulators <a href="#g517wjh83dtl" id="g517wjh83dtl"></a>

**Image analysis preparations to be conducted prior to starting**

* Download and install RootNav/SmartRoot on designated devices

(See Getting Started on RootNav section for details)

* Select microgreen seeds to be utilized
* Decide which growth media to be utilized
* Sterilize dishes and prepare with a layer of media about .5cm in thickness
