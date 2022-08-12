
docker-build:
	docker build -t local-summary -f Dockerfile ./

docker-service-build:
	docker build -t summary-service -f Dockerfile.service ./

docker-service-run:
	docker run --rm -it -p 5001:5000 summary-service:latest -port=5000 -host=0.0.0.0

docker-run-test:
	docker run --rm local-summary:latest bash -i -c "pytest"
