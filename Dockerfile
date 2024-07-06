FROM ubuntu:23.10
MAINTAINER syed "syedafzal22334@gmail.com"
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]
