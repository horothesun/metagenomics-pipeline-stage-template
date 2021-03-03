# How to integrate the "{{ cookiecutter.stage_display_name }}" stage

1. Add `.github/workflows/{{ cookiecutter.stage_folder_name }}-linux.yml` to your root `.github/workflows/` folder.
2. Add the `{{ cookiecutter.stage_folder_name }}/` folder to your project root.
3. Add `{{ cookiecutter.stage_folder_name }}/out/*` and `!{{ cookiecutter.stage_folder_name }}/out/.gitkeep` to your root `.gitignore` file.
4. Add your Conda dependencies to `{{ cookiecutter.stage_folder_name }}/environment.yml`.
5. Run `chmod +x {{ cookiecutter.stage_folder_name }}/run.sh`.
6. Add your stage logic to `{{ cookiecutter.stage_folder_name }}/run.sh`.
7. Edit `.github/workflows/{{ cookiecutter.stage_folder_name }}-linux.yml` to make it test your stage.
8. Update the root `README.md` file with
  a) the new stage GitHub Action badge and
  b) a dedicated section similar to the following

````markdown
## {{ cookiecutter.stage_display_name }}

```bash
conda env update --file {{ cookiecutter.stage_folder_name }}/environment.yml
conda activate {{ cookiecutter.stage_environment_name }}
./{{ cookiecutter.stage_folder_name }}/run.sh <INPUT_FILE>
```

Output files can be found in the `{{ cookiecutter.stage_folder_name }}/out/` folder.
````
