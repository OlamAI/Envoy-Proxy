# Copyright 2018 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

FROM envoyproxy/envoy:latest

COPY envoy.yaml /etc/envoy.yaml

EXPOSE 9091

# ADD CA_cert.pem /etc/envoy/CA_cert.pem
# ADD server_cert.pem /etc/envoy/server_cert.pem
# ADD server_key.pem /etc/envoy/server_key.pem

WORKDIR /etc/envoy
CMD /usr/local/bin/envoy -c /etc/envoy.yaml
