FROM python:3.7

RUN pip install wordcloud && \
    git clone https://github.com/pensnarik/consolas-font.git fonts

ENTRYPOINT ["wordcloud_cli"]
