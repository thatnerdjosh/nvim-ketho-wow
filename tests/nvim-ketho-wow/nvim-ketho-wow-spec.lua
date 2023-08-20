local plugin = require("nvim-ketho-wow")

describe("setup", function()
	it("works with default", function()
		assert("can get completion paths", plugin.get_completion_paths())
	end)

	-- it("works with custom var", function()
	-- 	plugin.setup({ opt = "custom" })
	-- 	assert("my first function with param = custom", plugin.hello())
	-- end)
end)
