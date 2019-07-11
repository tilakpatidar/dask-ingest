BASH_ENV := .env
SHELL := /bin/bash

clean-pyc:
	find ./scripts -name '*.pyc' -exec rm -f {} +
	find ./scripts -name '*.pyo' -exec rm -f {} +

lint:
	flake8 --exclude=$(LINT_EXCLUDE)

setup-local:
	build_scripts/setup.sh