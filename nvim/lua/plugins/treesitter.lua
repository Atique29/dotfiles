return{
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
                  ensure_installed = { "python", "cpp", "arduino", "asm", "matlab",  "c", "lua", "vim", "markdown_inline", "html" },
                  sync_install = false,
                  highlight = { enable = true },
                  indent = { enable = true },  
})
    end
}
    
    
