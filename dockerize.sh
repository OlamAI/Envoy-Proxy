echo "[Building docker image]"
docker build -t olamai/envoy-proxy:0.0.1 -f ./Dockerfile .

echo "[Publishing docker image]"
docker login
docker push olamai/envoy-proxy:0.0.1