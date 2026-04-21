vim.pack.add({
    { src="https://github.com/brianhuster/live-preview.nvim" },
})

-- Default options found in section "2. Configuration" of ":h livepreview"
require('livepreview.config').set({
    port = 5500,
    browser = 'default',
    dynamic_root = false,
    sync_scroll = true,
    picker = "",
    address = '127.0.0.1',
})

