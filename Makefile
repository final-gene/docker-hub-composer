NAME = composer
VERSION = 1.6

.PHONY: build clean

build:
	docker run \
		--rm \
		--volume "$(shell pwd)":/app \
		finalgene/hadolint \
		${VERSION}/Dockerfile

	docker build \
		--no-cache \
		--tag finalgene/${NAME}:dev \
		./${VERSION}

clean:
	-docker rmi \
		--force \
		$(shell docker images finalgene/${NAME}:dev -q)
