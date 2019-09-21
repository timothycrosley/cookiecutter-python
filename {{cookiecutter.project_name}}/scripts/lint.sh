#!/bin/bash -xe

poetry run mypy --ignore-missing-imports {{cookiecutter.project_name}}/
poetry run isort --multi-line=3 --trailing-comma --force-grid-wrap=0 --use-parentheses --line-width=100 --recursive --check --diff --recursive {{cookiecutter.project_name}}/ tests/
poetry run black --check -l 100 {{cookiecutter.project_name}}/ tests/
poetry run flake8 {{cookiecutter.project_name}}/ tests/ --max-line 100 --ignore F403,F401,W503
poetry run safety check
poetry run bandit -r {{cookiecutter.project_name}}/
