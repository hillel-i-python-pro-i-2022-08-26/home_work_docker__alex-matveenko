.PHONY: run-script
# Simple run main.py
run-script:
	@python main.py


.PHONY: init-dev
# Install all for work
init-dev:
	@pip install --upgrade pip && \
	  pip install --requirement requirements.txt

.PHONY: d-homework-i-run
# Make all actions needed for run project.
d-homework-i-run:
	@make doc-run

.PHONY: d-homework-i-purge
# Make all actions needed for purge project and related data.
d-homework-i-purge:
	@make doc-purge


.PHONY: doc-run
# Run docker
doc-run:
		@COMPOSE_DOCKER_CLI_BUILD=1 DOCKER_BUILDKIT=1 \
		docker-compose \
			up --build

.PHONY: doc-purge
# Stop docker
doc-purge:
		@COMPOSE_DOCKER_CLI_BUILD=1 DOCKER_BUILDKIT=1 \
		docker-compose \
			down --remove-orphans --rmi local --timeout 0
