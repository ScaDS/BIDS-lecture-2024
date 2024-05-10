# GPU accelerated image processing

As we work often with three-dimensional image data, potentially over time, classical image processing takes quite some time. 

Hence, we will dive into image processing on graphics processing units (GPUs) using [OpenCL](https://www.khronos.org/opencl/), [pyopencl](https://documen.tician.de/pyopencl/), [pyclesperanto](https://github.com/clesperanto/pyclesperanto_prototype) and optionally using [CUDA](https://en.wikipedia.org/wiki/CUDA) and [cupy](https://cupy.dev/). 
This technology allows us to process images faster, GPU accelerated. 
Note that classical algorithms and GPU-accelerated implementations may differ in the very details. 

## Installation of optional requirements

In this chapter, we will also take a look at [cupy](https://cupy.dev), an [NVidia CUDA](https://en.wikipedia.org/wiki/CUDA) based GPU-accelerated processing library and [napari-cupy-image-processing](https://github.com/haesleinhuepf/napari-cupy-image-processing), a scriptable napari plugin. These two can be installed using the following commands. This will however only work on computers that have a CUDA-compatible NVidia graphics card.

```
mamba install -c conda-forge cupy cudatoolkit=10.2
```

See also
* [Performance of dedicated laptop GPUs versus desktop GPUs (Linus Tech Tips video)](https://www.youtube.com/watch?v=z9fk9d6pry4)
* [Cupy installation](https://docs.cupy.dev/en/stable/install.html#installing-cupy)
