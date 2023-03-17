#!bin/bash
#You can create a Docker container for Grafana by running the following command:

docker run -d --name grafana -p 3000:3000 --link prometheus prom/grafana

