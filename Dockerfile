FROM python:3.9-alpine
RUN apk update && apk add bind-tools
WORKDIR /
COPY requirements.txt .
RUN pip3 install -r requirements.txt
COPY . /
ENTRYPOINT ["python3", "noisy.py"]
CMD ["--config", "config.json"]
