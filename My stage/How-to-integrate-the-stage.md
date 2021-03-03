# How to integrate the "My stage" stage

- Add `.github/workflows/my_stage-linux.yml` to your root `.github/workflows/` folder.
- Add the `my_stage/` folder to your project root.
- Add `my_stage/out/*` and `!my_stage/out/.gitkeep` to your root `.gitignore` file.
- Add your Conda dependencies to `my_stage/environment.yml`.
- Add your stage logic to `my_stage/run.sh`.
- Edit `.github/workflows/my_stage-linux.yml` to make it test your stage.
