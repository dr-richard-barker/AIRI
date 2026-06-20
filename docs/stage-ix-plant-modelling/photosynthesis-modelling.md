# Photosynthesis modelling



{% embed url="https://biocycle.atmos.colostate.edu/shiny/photosynthesis/" %}

<figure><img src="../.gitbook/assets/image (30).png" alt=""><figcaption></figcaption></figure>

#### MODEL DESCRIPTION

The rate of photosynthesis is determined by light, CO2, and the temperature-dependent kinetics of the enzyme whose nickname is _rubisco_, represented here according to the model first described by Farquahr et al (1980) and described in Denning (1993) and Bonan 2008.

We _choose the smallest of three potential rates_ of carboxylation: $$wcwc$$ (limited by CO2 and rubisco), $$wjwj$$ (limited by light and electron transport), and $$wsws$$ (limited by accumulating starch at the chloroplast). Following Bonan (2008, page 246), these three limiting rates are written as

$$wc=Vmax(ci−Γ∗)ci+Kc(1+Oi/Ko)$$wc=Vmax(ci−Γ∗)ci+Kc(1+Oi/Ko)$$wj=J(ci−Γ∗)4(ci+2Γ∗)$$wj=J(ci−Γ∗)4(ci+2Γ∗)$$ws=Vmax/2$$ws=Vmax/2

where $$cici$$ is the partial pressure (in Pascals, roughly ppmv/10) of $$CO2CO2$$ in the leaf chloroplast or intercellular fluid, $$Γ∗Γ∗$$ is the $$CO2CO2$$ compensation point (Pascals), $$OiOi$$ is the partial pressure of oxygen (assumed to be the same as ambient air, 0.209 $$psfcpsfc$$), and $$KCKC$$ and $$KoKo$$ are Michaelis-Menten coefficients (Pascals) for carboxylation and oxidation reactions catalyzed by rubisco.

The potential rate of electron transport (_J_, $$μμ$$ mol electrons m$$−2−2$$ s$$−1−1$$) depends on the amount of photosynthetically-active radiation absorbed by the leaf ($$ϕϕ$$, $$μμ$$ mol photons m$$−2−2$$ s$$−1−1$$)) and is determined as the smaller of the two roots of the equation

$$0.7J2−(Jmax+0.385ϕ)J+0.385Jmaxϕ=0$$0.7J2−(Jmax+0.385ϕ)J+0.385Jmaxϕ=0

where $$JmaxJmax$$ is the maximum rate of electron transport ($$μμ$$ mol electrons m$$−2−2$$ s$$−1−1$$), which depends on the amount of leaf chlorophyll. The maximum rate of carboxylation $$Vmax,μVmax,μ$$ mol CO$$22$$ m$$−2−2$$ s$$−1−1$$) is proportional to the amount of rubisco in the leaf. Because both rubisco and chlorophyll contain a lot of nitrogen, the parameters $$VmaxVmax$$ and $$JmaxJmax$$ depend critically on the bioavailable nitrogen obtained by the plant during the growth of the leaves.

All the parameters $$KCKC$$, $$KoKo$$, $$VmaxVmax$$, and $$JmaxJmax$$ also depend on temperature.

The program that does the calculation is very simple, and the code that controls this website is surprisingly simple too! It is all written in the programming language [R](http://www.r-project.org/), using a web programming package called [shiny](http://www.rstudio.com/shiny/). You can read all about it on the “**Website Code**” tab to the right.

