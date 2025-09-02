# Lightweight Python + Java + Spark dev image
FROM python:3.11-slim

ENV DEBIAN_FRONTEND=noninteractive
#RUN apt-get update && apt-get install -y --no-install-recommends \
#    openjdk-17-jdk-headless curl wget ca-certificates gnupg \
#    netcat-openbsd jq procps git bash-completion \
#    librdkafka-dev build-essential pkg-config \
#    kcat \
#  && rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y --no-install-recommends \
    curl wget kcat git jq \
  && rm -rf /var/lib/apt/lists/*

# Spark (3.5.x prebuilt for Hadoop 3)
#ARG SPARK_VERSION=3.5.1
#ARG SPARK_TGZ="spark-${SPARK_VERSION}-bin-hadoop3.tgz"
#RUN curl -fsSL "https://archive.apache.org/dist/spark/spark-${SPARK_VERSION}/${SPARK_TGZ}" -o "/tmp/${SPARK_TGZ}" \
#  && tar -xzf "/tmp/${SPARK_TGZ}" -C /opt \
#  && ln -s "/opt/spark-${SPARK_VERSION}-bin-hadoop3" /opt/spark \
#  && rm "/tmp/${SPARK_TGZ}"
#
#ENV SPARK_HOME=/opt/spark
#ENV PATH="$SPARK_HOME/bin:$PATH"
#ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
#
## Python deps: Spark + Kafka clients + data science niceties
#RUN pip install --no-cache-dir \
#    pyspark==3.5.1 \
#    confluent-kafka \
#    kafka-python \
#    jupyterlab \
#    pandas numpy pyarrow

# Helpful shell bits
RUN echo 'alias ll="ls -alF"' >> /root/.bashrc

WORKDIR /workspaces