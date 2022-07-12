Philipp Baumann ( <philipp.baumann@bfh.ch> |
<baumann-philipp@protonmail.com>).
Last update: 2022-07-12

# Overview

This repo shares the raw (binary), parsed and processed spectra used to
develop the general models of the Swiss mid-infrared (mid-IR) soil
spectral library (SSL) in version 1. The spectral measurements and
modeling were done at the [Sustainable Agroecosystems
Group](https://sae.ethz.ch/) at ETH Zürich. The data and hands-on were
compiled at the [Swiss Competence Center for Soils
(KOBO)](https://ccsols.ch/). This work was done as a PhD project, in
collaboration with the [Swiss Soil Monitoring group
(NABO)](https://www.agroscope.admin.ch/agroscope/en/home/topics/environment-resources/soil-bodies-water-nutrients/nabo.html)
at Agroscope. The associated laboratory analytical reference data needs
to be requested from NABO.This version comes along with this open-access
publication:

Baumann, P., Helfenstein, A., Gubler, A., Keller, A., Meuli, R. G.,
Wächter, D., Lee, J., Viscarra Rossel, R., & Six, J. (2021). Developing
the Swiss mid-infrared soil spectral library for local estimation and
monitoring. SOIL, 7(2), 525–546.
<https://doi.org/10.5194/soil-7-525-2021>

# How to fetch and use the data

Because this repository contains both binaries (OPUS files with
spectra), and large files (\> 100MB), the relevant data are stored on
GitHub via Large File Storage (LFS).

On Linux, either install git-lfs with your supported package manager, or
follow the [instructions on the official Git Large File Storage
page](https://git-lfs.github.com/). On Debian, you can just use:

``` bash
sudo apt install git-lfs
```

On MacOS, you can use
[Homebrew](https://formulae.brew.sh/formula/git-lfs):

``` bash
brew install git-lfs
```

On Windows, you can follow the instructions
[here](https://docs.github.com/en/repositories/working-with-files/managing-large-files/installing-git-large-file-storage),
where you are referred to download and execute the `.exe` file provided
[here](https://git-lfs.github.com/) (installer).

To enable it for your local user, you need to only type once to activate
LFS on your system:

``` bash
git lfs install
```

After this, you are ready to clone this repository, whereby git will
resolve and download all large files via LFS.
