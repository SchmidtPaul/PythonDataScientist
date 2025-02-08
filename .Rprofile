# Things for interactive mode, i.e. not for rendering:
if (interactive()) {
  # force reticulate to use the correct python environment,
  # i.e. the same one as the quarto rendering process uses
  python_env_path <- here::here("env", "Scripts", "python.exe")
  reticulate::use_python(python_env_path, required = TRUE)
  reticulate::py_config()
  
  # create a variable in the python environment to signal that we are in an interactive session
  # just like the R-function `interactive()` does above
  # reticulate::py_run_string("IS_INTERACTIVE = True")
  # reticulate::py_run_string("import os; os.environ['IS_INTERACTIVE'] = 'True'")
}

# load webexercises before each chapter
# needs to check namespace to not bork github actions
if (requireNamespace('webexercises', quietly = TRUE)) library(webexercises)

# install e.g. "seaborn" in the correct environment
# reticulate::py_install("tabulate", envname = here::here("env"))
