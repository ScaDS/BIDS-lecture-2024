# Complex exercise solutions
The notebooks in this folder serve as examples for solutions for the complex exercise, as an LLM would solve it. 
Most of them would allow to pass as pre-exam requirement even though they lack details: 
* Algorithm descriptions could be provided in more detail.
* Some notebooks are using a wrong segmentation algorithm and fail delivering a useful result.
* Installation instructions are commonly not detailed enough. Ideal would be if the notebook was accompanied by a requirements.txt or environment.yml file.
* The extracted feature tables should contain the filename the features were measured in.
The notebook [notebook_05.ipynb](notebook_05.ipynb) shall be highlighted as it provided the highest segmentation quality as self-tested by the LLM.

In order to make the notebooks run, it was required to update some dependencies:
```
pip install npe2==0.7.6 pydantic==2.7.4 napari==0.4.19 lxml_html_clean
```

The used environment is stored in [environment.yml](environment.yml).