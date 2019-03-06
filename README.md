## Envoy Proxy

This is a simple Envoy proxy that we use to translate GRPC( HTTP/2) with Browser Communication (HTTP/1.1).

The HTTP listener listening at 8080 and moving traffic to echo_service -our GRPC server at local IP and 17007 port

To Build  
`docker build -t olamai/envoy-proxy:0.0.1 -f ./Dockerfile .`

To Run  
`docker run -d -p 9091:9091 olamai/envoy-proxy-dev:0.0.1`
