docker build -t prometheus -f Dockerfile.prometheus Prometheus/.
docker build -t grafana -f Dockerfile.grafana Grafana/.
docker build -t flaskapp -f Dockerfile.flask Flask/.
