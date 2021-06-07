FROM python:3.6
ENV TERM=xterm

RUN pip install --upgrade ulozto-downloader
RUN apt install apt-transport-https
RUN echo "deb https://deb.torproject.org/torproject.org stretch main" >> /etc/apt/sources.list
RUN echo "deb-src https://deb.torproject.org/torproject.org stretch main" >> /etc/apt/sources.list
RUN echo "deb http://ftp.de.debian.org/debian stretch main" >> /etc/apt/sources.list
RUN curl https://deb.torproject.org/torproject.org/A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89.asc | gpg --import
RUN gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | apt-key add -
RUN apt update -y
RUN apt install -y libevent*
RUN apt install -y tor deb.torproject.org-keyring
RUN pip3 install --extra-index-url https://google-coral.github.io/py-repo/ tflite_runtime

WORKDIR /d

ENTRYPOINT ["ulozto-downloader --auto-captcha"]
