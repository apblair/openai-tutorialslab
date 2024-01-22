# OpenAITutorialsLab
Biomedical Informatics lab tutorials for how to use the OpenAI API.


## Install

```bash
docker pull apblair/openai-tutorialslab:nhlbi-bdc
```

Next run the JupyterLab container, open a browser to localhost:8888, and copy/paste the paste the JupyerLab password.

```bash
docker run it -p 8888:8888 -v $(pwd):/home/jovyan/work apblair/openai-tutorialslab:nhlbi-bdc
```