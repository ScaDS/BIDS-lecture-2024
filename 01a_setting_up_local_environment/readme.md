# Setting up your computer

This chapter provides instructions for setting up your computer before the tutorial.

# Setting up Python and Conda environments
When working with Python, we will make use of many plugins and software libraries which need to be organized.
One way of doing this, is by managing *Conda* environments.
A conda environment can be seen as a virtual desktop, or virtual computer, accessible via the terminal. 
If you install some software into one Conda environment, it may not be accessible from another environment. 
If a Conda environment breaks, e.g. incompatible software was installed, you can just make a new one and start over.

See also
* [Managing Scientific Python environments using Conda, Mamba and friends](https://focalplane.biologists.com/2022/12/08/managing-scientific-python-environments-using-conda-mamba-and-friends/)
* [Scientific Data Analysis with Python](https://youtu.be/MOEPe9TGBK0)
* [Getting started with Mambaforge and Python](https://biapol.github.io/blog/mara_lampert/getting_started_with_mambaforge_and_python/readme.html)

## Step 1: Install Miniforge
Download and install mamba/conda. We recommend the distribution [Miniforge](https://github.com/conda-forge/miniforge#miniforge3).

For ease-of-use, it is recommended to install it for your use only and to add Conda to the PATH variable during installation.

![img.png](install_mambaforge.png)

![img.png](install_mambaforge2.png)

## Step 2: Install devbio-napari

We recommend installing [devbio-napari](https://github.com/haesleinhuepf/devbio-napari), a distribution of napari with a set of plugins for bioimage analysis.

Use this command from the terminal:

```
mamba create --name my_first_env python=3.9 devbio-napari pyqt -c conda-forge
```

**Tip**: It is recommended to create one environment for every project you are executing. 
In that way installed software libraries and tools cannot harm each other.

## Step 3: Testing the installation

Afterwards, you can enter the environment to work with it. 
Whenever you want to work on the same project again, you should start a command line and enter this:

```
mamba activate my_first_env
```

Start [Jupyter lab](https://jupyter.org/) from the terminal like this

```
jupyter lab
```

A browser will open and show you the following web page. In the section `Notebook` click on "Python 3 (ipykernel)" to create a new notebook:

![img.png](start_jupyter_lab.png)

In the new notebook, click in the first code cell, enter `print("Hello world")` and hit SHIFT+ENTER on your keyboard. 
If everything is installed properly, it should look like this:

![img.png](hello_world.png)

