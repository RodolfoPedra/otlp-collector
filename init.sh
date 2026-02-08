docker compose -f docker-compose-local.yml down
sleep 2
docker compose -f docker-compose-local.yml up -d
sleep 1
docker container logs -f -n 50 opentelemetry-collector
