ARG BASE_TAG
FROM ubuntu:${BASE_TAG}

RUN set -x \
 && apt-get update -qq \
 && apt-get upgrade -y \
 && apt-get install --no-install-recommends -y \
	software-properties-common \
	language-pack-ja-base \
	language-pack-ja \
 && add-apt-repository ppa:duggan/bats \
 && apt-get update -qq \
 && apt-get install --no-install-recommends -y \
	bats \
 && echo "export LANG=ja_JP.UTF-8" >> ~/.bashrc
