VER=7.2.7

help:
	@echo "targets:"
	@echo "  build: build the Docker images, store them locally"
	@echo "  push: push the Docker images to Docker Hub"
	@echo
	@echo "Add the VER=xxx to the end to control the Jira version."

build:
	docker build -t unifield/atlassian-jira-software:$(VER) .

push:
	docker push unifield/atlassian-jira-software:$(VER)
