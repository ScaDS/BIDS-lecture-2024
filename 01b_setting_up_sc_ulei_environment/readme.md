# Installation instructions for devbio-napari on clara

These instructions are derived/modified from [this page](https://www.sc.uni-leipzig.de/05_Instructions/Jupyter/#how-to-use-your-own-environments-and-kernels).

Request a [Scientific Computing Account at ULei](https://www.urz.uni-leipzig.de/servicedesk-und-hilfe/hilfe-zu-unseren-services/forschung/hilfe-webbasiertes-data-science-und-machine-learning-mit-jupyter).

Login to VPN and [Jupyter Hub](https://lab.sc.uni-leipzig.de/) and open a terminal.

Install [ana]conda
```
module load Anaconda3
conda init bash
```

At this point, we need to reopen the terminal. Afterwards, create a conda environment with one specific python version only.

```
conda create --name my_first_env python=3.9
conda activate my_first_env
```

Install the needed libraries using `pip`:
```
pip install devbio-napari
pip install scikit-image==0.19.3
pip install ipykernel
```

Make this conda environment available to Jupyter hub like this:
```
python -m ipykernel install --user --name 'my_first_env' --display-name "my_first_env"
```

_Sometimes_ this is necessary too:
```
# Reload page (Jupyter hub in browser)
# jupyter labextension install @jupyter-widgets/jupyterlab-manager ipycanvas
```

To make stackview work interactively, install it outside the conda environment:
```
conda deactivate
pip install stackview --user
```
... and reload the page (in browser)


Just in case you want to install more packages later, reopen the terminal and install it:
```
conda activate bio39
pip install other-package
```
