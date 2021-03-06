FROM python:3.6

EXPOSE 8000

RUN apt-get update \
    && apt-get install -y --no-install-recommends node-less \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install -r requirements.txt
COPY . .

CMD ["./start.sh"]
