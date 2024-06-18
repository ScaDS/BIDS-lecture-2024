# Image generation

In this session we will generate images using stable diffusion via [huggingface](https://huggingface.co/) and OpenAI's Dall-E.

## Installation

Before installing anything, it is recommended to create a new environment

```
mamba create --name tea4 python=3.9 devbio-napari pyqt -c conda-forge
```

and activating it:
```
mamba activate tea4
```


In order to use Dall-E, we need to install openai:

```
pip install openai==1.30.1
```

To test the huggingface models, we need to install those packages:
```
pip install diffusers==0.24.0 transformers accelerate
```

For running Huggingface models on an NVidia-compatible GPU, you need to install these libraries:

```
mamba install pytorch torchvision torchaudio pytorch-cuda=11.8 cudatoolkit=11.8 huggingface_hub -c pytorch -c nvidia -c conda-forge
```

In case of installation or runtime issues, compare your environment using `conda list` with the environment stored in the [environment.yml](environment.yml) file and focus on the libraries which are mentioned in the error messages.
