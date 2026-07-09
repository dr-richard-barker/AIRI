# 🌱🚀 AIRI: Astrobotany International Research Initiative

[![Deploy MkDocs site to GitHub Pages](https://github.com/dr-richard-barker/AIRI/actions/workflows/deploy.yml/badge.svg)](https://github.com/dr-richard-barker/AIRI/actions/workflows/deploy.yml) [![License: CC0-1.0](https://img.shields.io/badge/License-CC0_1.0-lightgrey.svg)](https://creativecommons.org/publicdomain/zero/1.0/) [![Made with Material for MkDocs](https://img.shields.io/badge/Material_for-MkDocs-526CFE?logo=materialformkdocs\&logoColor=white)](https://squidfunk.github.io/mkdocs-material/)

**A free, hands-on astrobotany program for K–12 classrooms and citizen scientists.** Students grow microgreens, measure how roots respond to gravity, collect real data on their phones, and share it with a worldwide community studying how plants grow in space.

> 🌐 **Live site:** [https://dr-richard-barker.github.io/AIRI/](https://dr-richard-barker.github.io/AIRI/)

This repository holds the source for the AIRI documentation and curriculum, built with [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/).

## What's inside

* **Classroom Track (Stages I–IV)** — data literacy, growing microgreens, and gravitropism experiments needing little more than seeds, water, and a smartphone.
* **Extension & Research Track (Stages V–XI)** — plant hormones, cloning, computational modelling, and mining real spaceflight RNA-seq data.
* **For Teachers** — NGSS-aligned guidance, materials lists, and safety notes.

## Running locally

```bash
# 1. Install pinned dependencies (Python 3.x)
pip install -r requirements.txt

# 2. Live-preview the site with hot reload
mkdocs serve
# open http://127.0.0.1:8000/

# 3. Build the static site into ./site
mkdocs build
```

## Deployment

The site deploys automatically to **GitHub Pages** via the [`deploy.yml`](https://github.com/dr-richard-barker/AIRI/blob/main/.github/workflows/deploy.yml) GitHub Actions workflow on every push to `main`.

> ⚙️ **One-time setup:** In the repository, go to **Settings → Pages → Build and deployment** and set **Source = "GitHub Actions"**. (This replaces the older "deploy from a branch" method.)

## Contributing

Documentation lives in [`docs/`](https://github.com/dr-richard-barker/AIRI/blob/main/docs/README.md) and the navigation is defined in [`docs/SUMMARY.md`](docs/SUMMARY.md). The easiest way to suggest an edit is the **pencil icon** at the top of any page on the live site. For larger changes, open an issue or a pull request. Translations and new lesson ideas are especially welcome.

## FAIR & licensing

AIRI follows **FAIR** principles — data and materials should be _Findable, Accessible, Interoperable, and Reusable_. All content is released to the public domain under [**CC0 1.0**](https://github.com/dr-richard-barker/AIRI/blob/main/LICENSE/README.md), so you may use, remix, and translate it freely. If you use AIRI in teaching or research, a citation is appreciated — see [`CITATION.cff`](https://github.com/dr-richard-barker/AIRI/blob/main/CITATION.cff).

## Credits

A program of the **SKG Astrobotany Research and Education Program** (Osaka, Japan) and the **Gilroy Lab**, University of Wisconsin–Madison. Authors: Gilbert Cauthorn, Sophia Griffith, Rachel Wang, and Dr. Richard Barker.
