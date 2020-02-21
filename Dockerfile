FROM python:3.7

RUN pip install git+git://github.com/amueller/word_cloud.git && \
    git clone https://github.com/pensnarik/consolas-font.git fonts

ENTRYPOINT ["wordcloud_cli"]
