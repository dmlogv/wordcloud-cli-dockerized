FROM python:3.7

RUN pip install git+git://github.com/dm-logv/word_cloud.git@cli-args && \
    git clone https://github.com/pensnarik/consolas-font.git fonts

ENTRYPOINT ["wordcloud_cli"]
