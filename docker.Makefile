


DOCKER_FLAGS := docker run -i --rm $(DOCKER_CONTAINER_NAME) $(DOCKER_ENVS) $(DOCKER_MOUNT)

GIT_BRANCH := $(shell git rev-parse --abbrev-ref HEAD 2>/dev/null)
GIT_BRANCH_CLEAN := $(shell echo $(GIT_BRANCH) | sed -e "s/[^[:alnum:]]/-/g")
DOCKER_IMAGE := dev$(if $(GIT_BRANCH_CLEAN),:$(GIT_BRANCH_CLEAN))

DOCKER_RUN := $(DOCKER_FLAGS) "$(DOCKER_IMAGE)"

all:
	@echo $(DOCKER_RUN)

