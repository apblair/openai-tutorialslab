# openai-tutorialslab
Biomedical Informatics lab tutorials for how to use the OpenAI API.

## Project Structure

```bash
openai-tutorialslab
├── .env # contains your OPENAI_API_KEY
├── Dockerfile # recipe for latest JupyterLab datascience-notebook and openai 
├── NHLBI-BDC-openai-logprobs.ipynb
└── README.md
```

The `.env` file should look like this:

```bash
OPENAI_API_KEY=sk-letslearntheopenaiAPI
```

Using the openAI Python library, we can connect to the client using this snippet:

```python
from openai import OpenAI
from dotenv import load_dotenv

load_dotenv()
client = OpenAI()
```

## Tutorials

### National Heart Lung Blood Institute (NHLBI) BioData Catalyst (BDC)
**NHLBI-BDC-openai-logprobs.ipynb**
1. Classify cardiac research article abstracts into a set of predefined categories and evaluate the log probability. Demonstrates chat prompt engineering using `chat.completions.create` and `model=gpt-3.5-turbo` with the `logprobs` and `top_logprobs` parameters set for evaluating the confidence of the model's predictions.
2. Retrieve confidence scoring for congenital heart disease prompt questions using an article's abstract result section to reduce hallucinations.
3. Autocomplete each predicted token in a sentence using `logprobs` to assess how confident a model is in its prediction for the `top_logprobs=3`. 
4. Highlight tokens using the `logprobs` and `bytes` parameter. Evaluate the `logprobs` for a token and ASCII.

## Install

```bash
sudo docker pull apblair/openai-tutorialslab:nhlbi-bdc
```

Next run the JupyterLab container, open a browser to localhost:8888, and copy/paste the paste the JupyerLab password.

```bash
sudo docker run it -p 8888:8888 -v $(pwd):/home/jovyan/work apblair/openai-tutorialslab:nhlbi-bdc
```