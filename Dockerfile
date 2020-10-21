FROM mcr.microsoft.com/dotnet/core/sdk:3.1
RUN apt-get update && \
	apt-get install -y openjdk-11-jdk && \
	apt-get install -y ant && \
	apt-get install -y locales && \
	apt-get clean

ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64
RUN export JAVA_HOME

RUN echo "LC_ALL=en_US.UTF-8" >> /etc/environment && \
	echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen && \
	echo "LANG=en_US.UTF-8" > /etc/locale.conf && \
	locale-gen en_US.UTF-8

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV LC_ALL en_US.UTF-8