function ColorMyPencils(color)
    -- color = color or "onedark"
    -- color = color or "gruvbox"
    -- color = color or "github_dark"
    color = color or "tokyonight"

    vim.cmd.colorscheme(color)

    -- make the background transparent
    vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
    vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
end


ColorMyPencils()
