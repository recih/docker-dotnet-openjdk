FROM mcr.microsoft.com/dotnet/sdk:5.0
RUN apt-get update && \
	mkdir /usr/share/man/man1 && \
	apt-get install --no-install-recommends -y openjdk-11-jdk ant locales python3 && \
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
