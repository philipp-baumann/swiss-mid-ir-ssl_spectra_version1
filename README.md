Philipp Baumann ( <philipp.baumann@bfh.ch> |
<baumann-philipp@protonmail.com>). The research data aquisition and
modeling was done at ETH Zürich. The data and hands-on were compiled at
the Kompetenzzentrum Boden.
Last update: 2022-07-11

# Overview

This repo shares the raw (binary), parsed and processed spectra used to
develop the general models of the Swiss mid-infrared (mid-IR) soil
spectral library (SSL) in version 1. This version comes along with this
open-access publication:

Baumann, P., Helfenstein, A., Gubler, A., Keller, A., Meuli, R. G.,
Wächter, D., Lee, J., Viscarra Rossel, R., & Six, J. (2021). Developing
the Swiss mid-infrared soil spectral library for local estimation and
monitoring. SOIL, 7(2), 525–546.
<https://doi.org/10.5194/soil-7-525-2021>

The associated laboratory analytical reference data needs to be
requested from the [Swiss Soil Monitoring
(NABO)](https://www.agroscope.admin.ch/agroscope/en/home/topics/environment-resources/soil-bodies-water-nutrients/nabo.html)
group at Agroscope.

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

To enable it for your local user, you need to only type once to activate
LFS on your system:

``` bash
git lfs install
```
