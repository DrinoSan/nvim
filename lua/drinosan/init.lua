require("drinosan.remap")
require("drinosan.set")
require("drinosan.packer")
require("drinosan.luasnip")
require("drinosan.testLua")



vim.api.nvim_create_autocmd({ "BufEnter", nil }, {
    pattern = { "*.cpp", "*.hpp" },
    callback = function()
        print("Entering a C++ file")
    end,
})
