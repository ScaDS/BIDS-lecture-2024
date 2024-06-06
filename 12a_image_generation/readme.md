# Image generation

In this session we will generate images using stable diffusion via [huggingface](https://huggingface.co/) and OpenAI's Dall-E.


For running Huggingface models, you need to install these libraries:

```
mamba install pytorch torchvision torchaudio pytorch-cuda=11.8 -c pytorch -c nvidia
```

```
pip install diffusers==0.24.0 transformers accelerate
```