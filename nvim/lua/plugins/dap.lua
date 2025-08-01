require("dap").configurations.python = {
  {
    name = "Pytest: Current File",
    type = "python",
    request = "launch",
    module = "pytest",
    args = {
      "${file}",
      "-sv",
      "--log-cli-level=INFO",
      "--log-file=test_out.log",
    },
    console = "integratedTerminal",
    pythonPath = (function()
      local venv = os.getenv "VIRTUAL_ENV" or os.getenv "CONDA_PREFIX"
      if venv then
        return venv .. "/bin/python"
      else
        return vim.g.python3_host_prog or "python3"
      end
    end)(),
  },
}
