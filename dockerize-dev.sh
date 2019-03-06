echo "[Building docker dev image]"
docker build -t olamai/envoy-proxy-dev:0.0.1 -f ./Dockerfile.dev .

echo "[Publishing docker dev image]"
docker login
docker push olamai/envoy-proxy-dev:0.0.1