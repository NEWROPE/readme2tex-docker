FROM python:3

MAINTAINER Hiroki Arai <arai@newrope.biz>

RUN apt-get update && \
    apt-get install -y texlive-extra-utils

RUN pip install readme2tex

WORKDIR /work

ENTRYPOINT ["python", "-m", "readme2tex"]
