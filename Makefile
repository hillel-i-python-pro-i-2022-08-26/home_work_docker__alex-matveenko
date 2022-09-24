.PHONY: run-script
# Simple run main.py
run-script:
	@python main.py


.PHONY: init-dev
# Install all for work
init-dev:
	@pip install --upgrade pip && \
	  pip install --requirement requirements.txt

.PHONY: doc-i-run
# Make all actions needed for run project.
doc-i-run:
	@make doc-run

.PHONY: doc-i-purge
# Make all actions needed for purge project and related data.
doc-i-purge:
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
