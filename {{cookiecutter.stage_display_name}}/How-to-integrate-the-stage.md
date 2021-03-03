# How to integrate the "{{ cookiecutter.stage_display_name }}" stage

- Add `.github/workflows/{{ cookiecutter.stage_folder_name }}-linux.yml` to your root `.github/workflows/` folder.
- Add the `{{ cookiecutter.stage_folder_name }}/` folder to your project root.
- Add `{{ cookiecutter.stage_folder_name }}/out/*` and `!{{ cookiecutter.stage_folder_name }}/out/.gitkeep` to your root `.gitignore` file.
- Add your Conda dependencies to `{{ cookiecutter.stage_folder_name }}/environment.yml`.
- Add your stage logic to `{{ cookiecutter.stage_folder_name }}/run.sh`.
- Edit `.github/workflows/{{ cookiecutter.stage_folder_name }}-linux.yml` to make it test your stage.
- Update the root `README.md` file with
  - the new stage GitHub Action badge and
  - a dedicated section similar to the following

````markdown
## {{ cookiecutter.stage_display_name }}

```bash
conda env update --file {{ cookiecutter.stage_folder_name }}/environment.yml
conda activate {{ cookiecutter.stage_environment_name }}
./{{ cookiecutter.stage_folder_name }}/run.sh <INPUT_FILE>
```

Output files can be found in the `{{ cookiecutter.stage_folder_name }}/out/` folder.
````
