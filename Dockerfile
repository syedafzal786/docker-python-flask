FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get install -y python3.9 python3-pip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
MAINTAINER syed "syedafzal22334@gmail.com"
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python3"]
CMD ["app.py"]
