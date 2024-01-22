FROM jupyter/datascience-notebook:latest
RUN pip install python-dotenv
RUN pip install --upgrade openai
RUN pip install flask
RUN pip install transformers torch
