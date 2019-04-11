FROM envoyproxy/envoy:latest

COPY envoy-proxy-tls.yaml /etc/envoy.yaml

EXPOSE 80
EXPOSE 443

ADD simulation-terrarium-ai.crt /etc/simulation-terrarium-ai.crt
ADD simulation-terrarium-ai.key /etc/simulation-terrarium-ai.key

WORKDIR /etc/envoy
CMD /usr/local/bin/envoy -c /etc/envoy.yaml
