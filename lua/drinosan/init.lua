require("drinosan.remap")
require("drinosan.set")
require("drinosan.packer")
require("drinosan.luasnip")
require("drinosan.testLua")



-- Little test for autogroups: Functions prints text if file is .cpp or .hpp
-- vim.api.nvim_create_autocmd("BufEnter", {
--     pattern = { "*.cpp", "*.hpp" },
--     callback = function()
--         print("Entering a C++ file")
--         print("BEGIN")
--         print("END")
--         print(vim.bo.ft)
--     end,
-- })
