local dap = require 'dap'
dap.configurations.php = {
  {
    type = 'php',
    request = 'launch',
    name = 'Listen for Xdebug',
    port = 9003,
    pathMappings = {
        ['/srv/api'] = "${workspaceFolder}", 
    }
  }
}
