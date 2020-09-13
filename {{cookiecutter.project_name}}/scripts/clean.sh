#!/bin/bash
set -euxo pipefail

poetry run isort {{cookiecutter.project_name}}/ tests/
poetry run black {{cookiecutter.project_name}}/ tests/
