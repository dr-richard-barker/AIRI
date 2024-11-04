# Stage VIII: Root Modelling

Building a System Biology Modelling Class with Software and Concepts The sources provide a rich collection of material and software that can be used to structure a comprehensive system biology modelling class, particularly focused on plant root systems:

● Module 1: Root System Architecture

○ This module would introduce students to the concept of root system architecture and its importance for plant function.

○ Students could use image analysis software such as ImageJ, RootScan, PHIV-RootCell, and RootAnalyzer to extract root architectural traits from images of real root systems.

○ They would then learn how to use root architecture models, such as RootBox, SmartRoot, OpenSimRoot, CRootBox, ArchiSimple, RootTyp, and DigR, to simulate root system development and explore the impact of different root traits on plant performance.

○ An example case study could involve students replicating the research by Schnepf et al. (2016), where they use RootSystemAnalyzer to analyze published images and then utilize the extracted traits to parameterize the RootBox model. This would demonstrate the practical application of combining image analysis with modelling.

● Module 2: Root Anatomy and Hydraulics

○ This module would focus on the cellular structure of roots and how it relates to water transport.○ Students would gain hands-on experience using CellSet to digitize root cross-sections and create detailed cell networks.

○ They would then be introduced to the GRANAR software, which can generate realistic root anatomies from easily acquired data.

○ The module would culminate in the use of MECHA to estimate the radial and axial hydraulic conductivities of root cross-sections.

○ CPlantBox could be introduced here to simulate the interaction of root hydraulic properties with water flow in the whole plant.

○ A potential assignment could involve using GRANAR to generate a diverse set of root anatomies and then analyzing their hydraulic properties using MECHA, drawing comparisons with experimental data from the sources.

● Module 3: Connecting Scales and Integrating Data

○ This module would emphasize the importance of considering multiple scales in system biology modelling.

○ Students would learn how to integrate data from different sources and scales to create more comprehensive models.

○ The concept of a "network of soil-root computational tools" could be introduced, demonstrating how data and models can be connected across scales.

○ For example, the module could guide students in linking the outputs of MECHA at the root cross-section level to R-SWMS, PlaNet-Maize, or OpenSimRoot, which model water flow at the whole root system scale.

○ Students could then use MARSHAL to connect the simulated root system hydraulic architecture to whole-plant water uptake.

○ The class could even extend this to the population scale, integrating root system models with soil water flow models like HYDRUS.

○ Discussions could explore the limitations of existing tools and highlight future research directions, encouraging students to think critically about the field.

● Module 4: Model Validation and Applications

○ The final module would cover the validation of models and their application to real-world problems.

○ Students would learn techniques for evaluating model performance and comparing model predictions to experimental data.

○ The concept of inverse modelling could be introduced, demonstrating how models can be used to estimate parameters that are difficult to measure directly.

○ The sources provide ample examples of how models have been used to study various aspects of root system function, including the contribution of different root types to water uptake and the impact of apoplastic barriers on hydraulic conductivity

.○ CPlantBox-PiafMunch could be explored further in this module. Students could replicate the work described in, simulating diurnal carbon and water flow in a small plant and comparing the results to published experimental data. Further exploration of source-sink relations at the organ level could be done, simulating experiments and analyzing how the model reproduces the observed results. Students could analyze how the model can be used to reverse-estimate hidden experimental parameters. The final project for the class could encourage students to develop and apply models to address specific research questions related to plant root systems, drawing inspiration from the examples and techniques presented throughout the course. Throughout the class, emphasis should be placed on the interplay between experiments and modelling. Students should understand that models are tools for interpreting and extending experimental data, not replacements for them. The sources provide a valuable framework for designing such a class, illustrating the power of system biology modelling to advance our understanding of complex biological systems.

## CRootBox, is root modelling made easy <a href="#h.p_vjxdppmveu1k_l" id="h.p_vjxdppmveu1k_l"></a>

<figure><img src="../.gitbook/assets/image (19).png" alt=""><figcaption></figcaption></figure>

Find out more by reading this paper:&#x20;

{% embed url="https://academic.oup.com/aob/article/121/5/1033/4844040" %}

***



Then check out this website

{% embed url="https://plant-root-soil-interactions-modelling.github.io/CRootBox/" %}

***



Then perform your own modelling with this RShiny Application

{% embed url="https://plantmodelling.shinyapps.io/shinyRootBox/" %}

***



All the parameters used are shared in this configuration file

[https://figshare.com/collections/CRootBox\_parameter\_files/3745478](https://figshare.com/collections/CRootBox\_parameter\_files/3745478)





## Marshal is another Root modelling tool and the github training is awesome <a href="#h.p_vjxdppmveu1k_l" id="h.p_vjxdppmveu1k_l"></a>

<figure><img src="../.gitbook/assets/image (21).png" alt=""><figcaption></figcaption></figure>



{% @github-files/github-code-block url="https://github.com/MARSHAL-ROOT/marshal-pipeline" %}



The Shint application is fun

{% embed url="https://plantmodelling.shinyapps.io/marshal/" %}



