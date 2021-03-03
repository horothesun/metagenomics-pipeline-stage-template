# How to integrate the "{{ cookiecutter.stage_display_name }}" stage

- Add `.github/workflows/{{ cookiecutter.stage_folder_name }}-linux.yml` to your root `.github/workflows/` folder.
- Add the `{{ cookiecutter.stage_folder_name }}/` folder to your project root.
- Add `{{ cookiecutter.stage_folder_name }}/out/*` and `!{{ cookiecutter.stage_folder_name }}/out/.gitkeep` to your root `.gitignore` file.
- Add your Conda dependencies to `{{ cookiecutter.stage_folder_name }}/environment.yml`.
- Add your stage logic to `{{ cookiecutter.stage_folder_name }}/run.sh`.
- Edit `.github/workflows/{{ cookiecutter.stage_folder_name }}-linux.yml` to make it test your stage.
