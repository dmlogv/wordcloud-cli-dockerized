FROM python:3.7-slim

RUN pip install wordcloud

ENTRYPOINT ["wordcloud_cli"]
