#!/bin/bash

[ -z "${{ cookiecutter.stage_env_var_prefix }}INPUT_FILE" ] && echo "Error: {{ cookiecutter.stage_env_var_prefix }}INPUT_FILE must be defined" && exit 10
[ -z "${{ cookiecutter.stage_env_var_prefix }}OUTPUT_DIR" ] && echo "Error: {{ cookiecutter.stage_env_var_prefix }}OUTPUT_DIR must be defined" && exit 20

echo "{{ cookiecutter.stage_env_var_prefix }}INPUT_FILE: ${{ cookiecutter.stage_env_var_prefix }}INPUT_FILE"
echo "{{ cookiecutter.stage_env_var_prefix }}OUTPUT_DIR: ${{ cookiecutter.stage_env_var_prefix }}OUTPUT_DIR"

echo "TODO: implement run.sh..."
