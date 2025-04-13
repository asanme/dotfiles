return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    bigfile = { enabled = true },
    dashboard = {
      enabled = true,
      preset = {
        -- Use your preferred picker function (here the default from LazyVim is used)
        pick = function(cmd, opts)
          return LazyVim.pick(cmd, opts)()
        end,
        -- You can keep the default header or replace with your own ASCII art
        header = [[
           ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆         
            ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       
                  ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     
                   ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    
                  ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   
           ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  
          ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   
         ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  
         ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ 
              ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⢻⣿⣿⣄       
               ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⠃     
        ]],
        --- Override the default buttons by providing your custom key mappings.
        keys = {
          { icon = " ", key = "e", desc = "> New File", action = "<cmd>ene<CR>" },
          { icon = " ", key = "SPC ee", desc = "> Toggle file explorer", action = "<cmd>NvimTreeToggle<CR>" },
          { icon = "󰱼 ", key = "SPC ff", desc = "> Find File", action = "<cmd>Telescope find_files<CR>" },
          { icon = " ", key = "SPC fs", desc = "> Find Word", action = "<cmd>Telescope live_grep<CR>" },
          { icon = "󰁯 ", key = "SPC wr", desc = "> Restore Session For Current Directory", action = "<cmd>SessionRestore<CR>" },
          { icon = " ", key = "q", desc = "> Quit NVIM", action = "<cmd>qa<CR>" },
        },
      },
    },
    explorer   = { enabled = true },
    indent     = { enabled = true },
    input      = { enabled = true },
    picker     = { enabled = true },
    notifier   = { enabled = true },
    quickfile  = { enabled = true },
    scope      = { enabled = true },
    scroll     = { enabled = true },
    statuscolumn = { enabled = true },
    words      = { enabled = true },
  },
}

