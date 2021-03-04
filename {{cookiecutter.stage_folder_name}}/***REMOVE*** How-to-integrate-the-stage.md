# How to integrate the "{{ cookiecutter.stage_name }}" stage

1. Move `{{ cookiecutter.stage_folder_name }}-linux.yml` to the main project's `.github/workflows/` folder.
2. Add to the main project's `.gitignore` file the following lines

```gitignore
{{ cookiecutter.stage_folder_name }}/out/*
!{{ cookiecutter.stage_folder_name }}/out/.gitkeep
```

3. Run `chmod +x run.sh`.
4. Update your main project's `README.md` file with a dedicated section similar to the following

````markdown
### {{ cookiecutter.stage_name }}

```bash
conda env update --file {{ cookiecutter.stage_folder_name }}/environment.yml
conda activate {{ cookiecutter.stage_environment_name }}
./{{ cookiecutter.stage_folder_name }}/run.sh <INPUT_FILE>
```

Output files can be found in the `{{ cookiecutter.stage_folder_name }}/out/` folder.
````

5. Push your changes to the main project's repo (**do not commit this `.md` file**) and get the new GitHub Action badge code.
6. Update the main project's `README.md` file with the new GitHub Action badge.

---

Now you're ready to focus on

- adding your Conda dependencies to `{{ cookiecutter.stage_folder_name }}/environment.yml`,
- adding your code to `{{ cookiecutter.stage_folder_name }}/run.sh` and
- editing `.github/workflows/{{ cookiecutter.stage_folder_name }}-linux.yml` to make it test your code.
