return {
    "kylechui/nvim-surround",
    version = "*", 
    config = function()
        require("nvim-surround").setup {
            keymaps = {
                insert = "<C-g>s",
                insert_line = "<C-g>S",
                normal = "wa",
                normal_cur = "wal",
                normal_line = "yS",
                normal_cur_line = "ySS",
                visual = "W",
                visual_line = "gS",
                delete = "ds",
                change = "cs",
                change_line = "cS",
            },

      }
    
        -- vim.keymap.set('n', '<leader>wa', 'waiw"', { desc = 'Surround around word' }) 
    end
}
