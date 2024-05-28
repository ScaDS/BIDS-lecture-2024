[![CC BY 4.0][cc-by-shield]][cc-by]

This work is licensed by [Robert Haase](https://haesleinhuepf.github.io), [ScaDS.AI Dresden/Leipzig](http://scads.ai/) under a
[Creative Commons Attribution 4.0 International License][cc-by] unless mentioned otherwise.

[cc-by]: http://creativecommons.org/licenses/by/4.0/
[cc-by-image]: https://i.creativecommons.org/l/by/4.0/88x31.png
[cc-by-shield]: https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg

# Bio-image Data Science

This repository contains training resources for Students at Uni Leipzig who want to dive into bio-image data science with Python. 
The material will develop between April and July 2024 and shared here in this github repository. Corresponding PPTx files can be found [on zenodo](https://zenodo.org/doi/10.5281/zenodo.10907115).

## Teaching Goal

Students learn the full workflow of common bio-image data
science projects to a degree that they can execute a scientific
data analysis project in this context on their own. They will be
familiar with common bio-image analysis algorithms and
workflows, how to choose them according to a scientific goal,
and how to measure quality of derived results. Attending the
lecture and executing the practicals qualifies the students to
work as bio-image data scientist in the pharmaceutical industry
or basic biological research.

## Course contents

* [Introduction to Bio-image Data Science](01_Introduction_BIDS_2024.pdf) (April 2nd 2024)
  * Basics of microscopy
  * Introduction to Bio-image Analysis
  * Exercises:
    * [Setting up a local environment](01a_setting_up_local_environment/readme.md)
    * [Setting up Jupyter Hub at Scientific Computing / Leipzig University](01b_setting_up_sc_ulei_environment/readme.md)
    * [Execute the trailer notebook](01c_testing_environment/trailer.ipynb)

* [Research Data Management](02_Introduction_RDM_2024.pdf) (April 9th 2024)
  * Introduction to Research Data Management
    * Research Data Life Cycle
    * Data Management Plans
  * Sharing and licensing
    * The FAIR Principles
    * Creative Common License
    * Open Source Licenses
  * Exercises:
    * [Installation](02a_remote_files/readme.md)
    * [Accessing the nextcloud](02a_remote_files/nextcloud.ipynb)
    * [Exploring the BioImage Archive](02a_remote_files/exploring_bioimage_archive.ipynb)
    * [Exploring Meta Data on Zenodo](02b_meta_data/exploring_zenodo.ipynb)
    * [Exploring Meta Data on DOI.org](02b_meta_data/exploring_doi.ipynb)

* [Research Software Management and Image Processing](03_RSM_Image_Processing.pdf) (April 16th 2024)
  * Research Software Management
    * Version control with git
    * Conda environments
    * Software quality indicators
  * Image Processing
    * Image visualization
    * Image filtering
    * Morphological operations
  * Exercises:
    * [Sending pull-requests on GitHub](03a_pull_requests/readme.md)
    * [Image processing](03b_image_processing/)
    * [Breaking backwards compatibility](03c_dependency_management/breaking_backwards_compatibility.ipynb)

* [Image Segmenation](04_Image_segmentation.pdf) (April 23th 2024)
  * Binary images
    * Otsu Thresholding
    * Morphological operations
  * Labeling algorithms
    * Connected component labeling
    * Voronoi-Labeling
    * Watershed-algorithm
  * Napari
  * Exercises
    * [Image segmentation with Python](https://github.com/ScaDS/BIDS-lecture-2024/tree/main/04a_image_segmentation)
    * [Using Napari with Python](04b_napari_notebooks/napari_intro.ipynb)
    * [Setting up workflows in Napari interactively](04b_napari_notebooks/notebook-assistant.md)
    * [Exporting notebooks from Napari](04b_napari_notebooks/notebook_export.md)

* [Surface extraction, QA and Feature Extraction](05_Surface_Recon_QA.pdf) (April 30th 2024)
  * Surface meshes
    * Marching Cubes algorithm
    * Surface simplifaction
  * Segmentation Quality Assurance
    * [Metrics](https://www.nature.com/articles/s41592-023-02151-z)
  * Feature Extraction
  * Exercises
    * [Installation](<05a_surface reconstruction/readme.md>)
    * [Working with surface meshes](<05a_surface reconstruction/>)
    * [Segmentation quality assurance](05b_quality_assurance/)
    * [Feature extraction](05c_feature_extraction/)

* [Prompt Engineering and ChatBots](06_Chatbots.pdf)  (May 7th 2024)
  * [Installation instructions](06_chatbots/readme.md)
  * [The OpenAI API](06_chatbots/01_openai_api.ipynb)
  * [A basic Chatbot with memory](06_chatbots/02_chatbot.ipynb)
  * [Use Cases](06_chatbots/03_use_cases.ipynb)
  * [Prompt Engineering](06_chatbots/04_prompt_engineering.ipynb)
  * [ChatBot Graphical User Interface](06_chatbots/gui.ipynb)
  * [Excursion: ScaDS.AI MeetUp](https://www.meetup.com/de-DE/big-data-and-ai-saxony/events/300284128/)

* [GPU-accelerated and distributed image processing](07_distributed_gpu_computing.pdf) (May 14th 2024)
  * GPU-accleration / parallelization
  * OpenCL / CUDA
  * Tiled image processing
  * Bland Altman Plots
  * Exercises:
    * [CUDA installation](07a_gpu_acceleration/readme.md)
    * [GPU-accelerated image processing using OpenCL and CUDA](07a_gpu_acceleration/)
    * [Tiled image processing](07b_tiled_image_processing)
    * [Method comparison: Bland-Altman Plots](07c_bland_altman/bland_altman_analysis.ipynb)

* [Supervised and unsupervised Machine Learning](08_Sup_Unsup_Machine_Learning.pdf) (May 21st 2024)
  * Random Forest Classifiers
  * Dimensionality Reduction
  * Exercises:
    * [Interactive Parameter Exploration](08a_hypothesis_generation/interactive_parameter_exploration.ipynb)
    * [Interactive Pixel Classification](08b_pixel_and_object_classification/interactive_pixel_classification/readme.md)
    * [Interactive Object Classification](08b_pixel_and_object_classification/interactive_object_classification/readme.md)
    * [Random Forest Classifier Notebooks](08b_pixel_and_object_classification)
    
* [Deep Learning for image denoising and segmentation](09_Deep_Learning.pdf) (May 28th 2024)
  * Denoising using CARE, noise2noise, noise2void
  * Segmentation using StarDist, CellPose and micro-sam
  * Exercises
    * [noise2void](09a_dl_denoising/noise2void.ipynb)
    * [CellPose](09b_dl_segmentation/cellpose.ipynb)
    * [StarDist](09b_dl_segmentation/stardist.ipynb)
    * [Micro-SAM](09c_micro_sam/micro-sam.ipynb)

## Planned contents
* Image Data Management
* Microscopy image analysis (filtering, segmentation, feature extraction)
* Quality Assurance
* Supervised and unsupervised machine learning for pixel, object and image classification / clustering
* Deep Learning techniques for image denoising and segmentation
* Multi-modal Deep Learning + Large Language Models for bioimage analysis
* Prompt-Engineering 



## Pre-requesites
* Basic Python programming skills are required

## Literature
* [Bioimage Data Analysis Workflows ‒ Advanced Components and Methods. Editors: Kota Miura, Nataša Sladoje. 2022](https://link.springer.com/book/10.1007/978-3-030-76394-7)
* [A Hitchhiker's guide through the bio-image analysis software universe. Haase et al. FEBS Letters. Volume 596, Issue 19 p. 2472-2485](https://febs.onlinelibrary.wiley.com/doi/full/10.1002/1873-3468.14451)
* [Bio Image Analysis Notebooks, Haase et al. 2024 DOI: 10.5281/zenodo.10465773](https://haesleinhuepf.github.io/BioImageAnalysisNotebooks/)

More literature might be added during the lecture.

## Covered Python libraries
In this course we will use the following Python libraries to analyse mciroscopy image data
* [numpy](https://numpy.org)
* [scipy](https://www.scipy.org/)
* [scikit-image](https://scikit-image.org/)
* [clEsperanto](https://github.com/clEsperanto/pyclesperanto_prototype).
* [napari](https://napari.org)
* [scikit-learn](https://scikit-learn.org/)
* [apoc](https://github.com/haesleinhuepf/apoc)
* [OpenAI API](https://openai.com/blog/openai-api)
* [stardist](https://github.com/stardist/stardist)
* [n2v](https://github.com/juglab/n2v)
* [cellpose](https://github.com/MouseLand/cellpose)
* [seaborn](https://seaborn.pydata.org/)

## See also

### Former lectures and related materials

A lecture covering similar contents was held in the past years at TU Dresden:
* [Bio-image Analysis, programming, bio-statistics and machine learning 2023](https://github.com/BiAPoL/Bio-image_Analysis_with_Python/tree/51aabbeb269c9ad1a88fdef1ff9ff9cb69bf93e0)
* [Bio-image Analysis, programming, bio-statistics and machine learning 2022](https://github.com/BiAPoL/Bio-image_Analysis_with_Python/tree/035bb75d90444f14ef21876bf3fdf9e53417f87b)
* [Bio-image Analysis, programming, bio-statistics and machine learning 2021](https://github.com/BiAPoL/Bio-image_Analysis_with_Python/tree/a62070dee408814cee4258758f5187f135774519)
* [Bio-image Analysis, programming, bio-statistics and machine learning 2020](https://git.mpi-cbg.de/rhaase/lecture_applied_bioimage_analysis_2020)
* [Bio-image Analysis, ImageJ Macro programming 2019](https://git.mpi-cbg.de/rhaase/lecture_applied_bioimage_analysis)
* [Bio-image Analysis Notebooks](https://haesleinhuepf.github.io/BioImageAnalysisNotebooks/)

### Image Analysis
* [Introduction to Bioimage Analysis](https://bioimagebook.github.io/)
* [Basics of Image Processing and Analysis by Kota Miura](https://github.com/miura/ij_textbook1/raw/76b51338e1f006c580b6f0f5cfc48fe02fba38d7/CMCIBasicCourse201102Bib.pdf)
* [Classic ImageJ training resources](https://imagej.nih.gov/ij/docs/examples/index.html)
* [Bioimage Data Analysis Workflows edited by Kota Miura and Nataša Sladoje](https://link.springer.com/book/10.1007%2F978-3-030-22386-1)

### Python
* [Python cheat sheet](https://github.com/gto76/python-cheatsheet)
* [Python/Conda environments](https://mpicbg-scicomp.github.io/ipf_howtoguides/guides/Python_Conda_Environments)
* [Scientific data analyis in Python, Biotec lecture](https://youtu.be/MOEPe9TGBK0)
* [Python for Microscopists, video series by Sreeni](https://www.youtube.com/channel/UC34rW-HtPJulxr5wp2Xa04w)
* [Managing Conda environments, online documentation](https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html)
* [Bio-image Analysis using Scikit-Image in Python, Biotec lecture](https://youtu.be/FnvgepHDqRA)
* [Python for Bio-image Analysis by the Image Analysis Focused Interest Group of the Royal Microscopical Society](https://github.com/IAFIG-RMS/Python-for-Bioimage-Analysis)
* [Interactive Bioimage Analysis with Python and Jupyter, NEUBIAS academy webinar](https://youtu.be/2KF8vBrp3Zw), [Part 2](https://youtu.be/Y3pB3wnOivE)
* [Multi-dimensional image visualization in Python using napari, NEUBIAS Academy webinar](https://youtu.be/VgvDSq5aCDQ)

## Contributing
Contributions to this repository are welcome! If you see typos, bugs or have general feedback, please create a [github issue](https://github.com/ScaDS/BIDS-lecture-2024/issues) to let us know. 
If you would like to add additional lessons or want to suggest improvements to existing ones, [pull-requests](https://github.com/ScaDS/BIDS-lecture-2024/pulls) are very welcome!

## Acknowledgements
Some of the materials in this repository originate from the [BioImageAnalysis Notebooks](https://haesleinhuepf.github.io/BioImageAnalysisNotebooks/intro.html), were written by Robert Haase Guillaume Witz and were licensed [CC-BY 4.0](https://creativecommons.org/licenses/by/4.0/).
[Robert Haase](https://twitter.com/haesleinhuepf/) acknowledges funding by the Deutsche Forschungsgemeinschaft (DFG, German Research Foundation) under Germany’s Excellence Strategy – EXC2068 - Cluster of Excellence Physics of Life of TU Dresden.
We acknowledge the financial support by the Federal Ministry of Education and Research of Germany and by Sächsische Staatsministerium für Wissenschaft, Kultur und Tourismus in the programme Center of Excellence for AI-research „Center for Scalable Data Analytics and Artificial Intelligence Dresden/Leipzig“, project identification number: ScaDS.AI

[Imprint](https://www.uni-leipzig.de/impressum)
