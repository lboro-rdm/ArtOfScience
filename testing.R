library(reticulate)

# Check the Python version and environment
py_config()

# Import the necessary Python modules
subprocess <- import("subprocess")
sys <- import("sys")

# Function to run a pip command and capture the output
run_pip_command <- function(cmd) {
  process <- subprocess$run(
    cmd,
    stdout = subprocess$PIPE,
    stderr = subprocess$PIPE,
    text = TRUE
  )
  return(process$stdout)
}

# Get the list of installed packages
pip_list_output <- run_pip_command(c(sys$executable, "-m", "pip", "list"))
cat(pip_list_output)


# Function to get package details
get_package_info <- function(package_name) {
  cmd <- c(sys$executable, "-m", "pip", "show", package_name)
  package_info <- run_pip_command(cmd)
  return(package_info)
}

# Example: Get the location of the 'Pillow' package
pillow_info <- get_package_info("Pillow")
cat(pillow_info)

