return {
  'robitx/gp.nvim',
  config = function()
    local conf = {
      providers = {
        googleai = {
          endpoint = 'https://generativelanguage.googleapis.com/v1beta/models/{{model}}:streamGenerateContent?key={{secret}}',
          secret = os.getenv 'GEMINI_API_KEY',
        },
      },
    }
    require('gp').setup(conf)

    -- Setup shortcuts here (see Usage > Shortcuts in the Documentation/Readme)
  end,
}
