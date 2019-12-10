IMAGE := ministryofjustice/docker-registry-cache
TAG := 1.1

build: .built-docker-image

.built-docker-image: Dockerfile makefile config.yml
	docker build -t $(IMAGE) .
	touch .built-docker-image

push: .built-docker-image
	docker tag $(IMAGE) $(IMAGE):$(TAG)
	docker push $(IMAGE):$(TAG)

run: .built-docker-image
	docker rm registry || true
	docker run --rm -p 5000:5000 --name registry $(IMAGE)

shell:
	docker exec -it registry sh
