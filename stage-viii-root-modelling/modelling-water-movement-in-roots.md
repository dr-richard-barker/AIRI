# Modelling water movement in roots



Check out this review article

{% embed url="https://onlinelibrary.wiley.com/doi/10.1002/pld3.582" %}

<figure><img src="../.gitbook/assets/image (23).png" alt=""><figcaption></figcaption></figure>



Check out the shiny application to identify most important facters affect the soil-plant-atmopshere continuum

{% embed url="https://roothydraulic-properties.shinyapps.io/database/" %}

## Now try MECHA!

MECHA is an explicit cross-section model of the root hydraulic anatomy which connects hydraulic concepts across scales.

The model computes horizontal water flow at the level of individual cells, quantifies the contribution of water composite pathways, and predicts root radial permeability (kr), using detailed anatomical descriptions and experimental data on the permeability of cell walls (kw), membranes (Lp) and the conductance of individual plasmodesmata (KPD).

<figure><img src="../.gitbook/assets/image (27).png" alt=""><figcaption></figcaption></figure>

[https://mecharoot.github.io/](https://mecharoot.github.io/)



<figure><img src="../.gitbook/assets/image (28).png" alt=""><figcaption></figcaption></figure>

### Using MECHA

***

![](https://mecharoot.github.io/img/mecha2.png)

**Input files**

MECHA uses four parameters files as input, stored in the `/in` folder in the main MECHA directory:

* `General.xml` : General simulation parameters
* `BC.xml` : Boundary conditions for the simulation. This is where you choose wether the soil is dry, wet, or only partially touch the root.
* `Geometry.xml` : Parameters for the root section geometry. This is where you define which root section to use in the simulation.
* `Hydraulics.xml` : Hydraulic parameters of the different variables in the simulation

**Ouput files**

MECHA output files in a folder defined in the `General.xml` input file, under the `Output` tag. Different type of files are generated:

* `*.PVTK files` : These are geometry files that can be open in Paraview
* `Macro_prop_i.txt files` : Theses files contain synthetic informations about the simulation results. They contain the radial data.

### About us

***

![](https://mecharoot.github.io/img/mecha3.png)

MECHA was developed at the Université catholique de Louvain, in the Earth and Life Insititute, in the lab of [Xavier Draye](http://www.uclouvain.be/xavier.draye).\
\
The primary developpers of the model are [Valentin Couvreur](http://www.uclouvain.be/valentin.couvreur) and Marc Faget.\
\


MECHA what first used here:

> [Going with the flow. Multiscale insights into the composite nature of water transport in roots\
> Valentin Couvreur, Marc Faget, Guillaume Lobet, Mathieu Javaux, François Chaumont and Xavier Draye\
> Plant Physiology, 2018](https://doi.org/10.1104/pp.18.01006)

***

[ Source code on GitHub](https://github.com/MECHARoot/MECHA/releases/tag/1.0) [ View paper](https://mecharoot.github.io)

***

![](https://mecharoot.github.io/img/connect.png)

MECHA was then re-use in other research study, such as:

> [Connecting the dots between computational tools to analyse soil–root water relations\
> Sixtine Passot, Valentin Couvreur, Félicien Meunier, Xavier Draye, Mathieu Javaux, Daniel Leitner, Loïc Pagès, Andrea Schnepf, Jan Vanderborght, Guillaume Lobet\
> Journal of Experimental Botany, 2019](https://doi.org/10.1093/jxb/ery361)

![](https://mecharoot.github.io/img/granar.JPG)

> [GRANAR, a computational tool to better understand the functional importance of monocotyledon root anatomy\
> Adrien Heymans, Valentin Couvreur, Therese LaRue, Ana Paez-Garcia, Guillaume Lobet\
> Plant Physiology, 2020](https://doi.org/10.1104/pp.19.00617)

![](https://mecharoot.github.io/img/aqua.png)

> [Modification of the expression of the aquaporin ZmPIP2; 5 affects water relations and plant growth\
> Lei Ding, Thomas Milhiet, Valentin Couvreur, Hilde Nelissen, Adel Meziane, Boris Parent, Stijn Aesaert, Mieke Van Lijsebettens, Dirk Inzé, François Tardieu, Xavier Draye, François Chaumont\
> Plant Physiology, 2020](https://mecharoot.github.io/)

![](https://mecharoot.github.io/img/noninv.png)

> [Non-invasive hydrodynamic imaging in plant roots at cellular resolution\
> Flavius C. Pascut, Valentin Couvreur, Daniela Dietrich, Nicky Leftley, Guilhem Reyt, Yann Boursiac, Monica Calvo-Polanco, Ilda Casimiro, Christophe Maurel, David E. Salt, Xavier Draye, Darren M. Wells, Malcolm J. Bennett, Kevin F. Webb\
> Nature Communications, 2021](https://doi.org/10.1038/s41467-021-24913-z)

![](https://mecharoot.github.io/img/comb.png)

> [Combining cross-section images and modeling tools to create high-resolution root system hydraulic atlases in Zea mays\
> Adrien Heymans, Valentin Couvreur, Guillaume Lobet\
> Plant Direct, 2021](https://doi.org/10.1002/pld3.334)

![](https://mecharoot.github.io/img/pump.png)

> [Evidence for a multicellular symplasmic water pumping mechanism across vascular plant roots\
> V Couvreur, A Heymans, G Lobet, X Draye\
> BiorXiv, 2021](https://doi.org/10.1101/2021.04.19.439789)



