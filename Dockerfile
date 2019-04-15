FROM envoyproxy/envoy:latest

COPY envoy-proxy.yaml /etc/envoy.yaml

EXPOSE 9091
EXPOSE 443

WORKDIR /etc/envoy
CMD /usr/local/bin/envoy -c /etc/envoy.yaml
