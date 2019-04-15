# Envoy Proxy

This is a simple Envoy proxy that we use to translate GRPC( HTTP/2) with Browser Communication (HTTP/1.1).

The HTTP listener listening at 9091 and moving traffic to echo_service -our GRPC server at local IP and 9090 port

To get command help:  
`make help`

# Local vs. Prod
There are 2 versions of this proxy, the regular proxy and the local proxy. The local proxy is made to be run on your LOCAL machine, using the docker-compose file whereas the regular proxy is to be used in K8s, either minikube or GKE.