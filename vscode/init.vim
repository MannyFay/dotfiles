if exists('g:vscode')
    norcalli/nvim-colorizer.lua
else
    numToStr/Comment.nvim
endif

nnoremap <leader>/ <Cmd>lua require('vscode-neovim').action('editor.action.commentLine')<CR>
