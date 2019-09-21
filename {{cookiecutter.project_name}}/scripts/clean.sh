#!/bin/bash -xe

poetry run isort --multi-line=3 --trailing-comma --force-grid-wrap=0 --use-parentheses --line-width=100 --recursive {{cookiecutter.project_name}}/ tests/
poetry run black {{cookiecutter.project_name}}/ tests/ -l 100
