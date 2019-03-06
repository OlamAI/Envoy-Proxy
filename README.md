# Envoy Proxy

This is a simple Envoy proxy that we use to translate GRPC( HTTP/2) with Browser Communication (HTTP/1.1).

The HTTP listener listening at 9091 and moving traffic to echo_service -our GRPC server at local IP and 9090 port

## Dev Usage

To Build  
`./dockerize-dev.sh`

To Run  
`docker run -d -p 9091:9091 olamai/envoy-proxy-dev:0.0.1`

## Prod Usage

To Build  
`./dockerize.sh`

Delploy using yaml in Simulation /k8s folder
