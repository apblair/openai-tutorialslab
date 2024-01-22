# openai-tutorialslab
Biomedical Informatics lab tutorials for how to use the OpenAI API.

## Tutorials

### NHLBI
**NHLBI-BDC-openai-logprobs.ipynb**
1. Classify cardiac research article abstracts into a set of predefined categories and evaluate the log probability. Demonstrates chat prompt engineering using `chat.completions.create` and `model=gpt-3.5-turbo` with the `logprobs` and `top_logprobs` parameters set for evaluating the confidence of the model's predictions.

## Install

```bash
docker pull apblair/openai-tutorialslab:nhlbi-bdc
```

Next run the JupyterLab container, open a browser to localhost:8888, and copy/paste the paste the JupyerLab password.

```bash
docker run it -p 8888:8888 -v $(pwd):/home/jovyan/work apblair/openai-tutorialslab:nhlbi-bdc
```