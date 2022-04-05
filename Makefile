.docker-build:
	docker build --platform=linux/amd64 -t upx-golang-m1-test:latest .

.docker-run:
	docker run --platform=linux/amd64 -t upx-golang-m1-test:latest

run: .docker-build .docker-run
