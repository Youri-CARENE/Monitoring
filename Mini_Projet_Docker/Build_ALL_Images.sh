docker build -t prometheus -f Dockerfile.prometheus Flask/.
docker build -t grafana -f Dockerfile.grafana Grafana/.
docker build -t flaskapp -f Dockerfile.flask Promotheus/.
