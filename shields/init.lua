local use_moreores = minetest.get_modpath("moreores")

-- Regisiter Shields

minetest.register_tool("shields:shield_admin", {
	description = "Admin Shield",
	inventory_image = "shields_inv_shield_admin.png",
	groups = {armor_shield=1000, armor_heal=100, armor_use=0},
	wear = 0,
})

if ARMOR_MATERIALS.steel then
	minetest.register_tool("shields:shield_steel", {
		description = "Steel Shield",
		inventory_image = "shields_inv_shield_steel.png",
		groups = {armor_shield=10, armor_heal=0, armor_use=500},
		wear = 0,
	})
end

if ARMOR_MATERIALS.bronze then
	minetest.register_tool("shields:shield_bronze", {
		description = "Bronze Shield",
		inventory_image = "shields_inv_shield_bronze.png",
		groups = {armor_shield=10, armor_heal=6, armor_use=250},
		wear = 0,
	})
end

if ARMOR_MATERIALS.gold then
	minetest.register_tool("shields:shield_gold", {
		description = "Gold Shield",
		inventory_image = "shields_inv_shield_gold.png",
		groups = {armor_shield=10, armor_heal=6, armor_use=250},
		wear = 0,
	})
end

for k, v in pairs(ARMOR_MATERIALS) do
	minetest.register_craft({
		output = "shields:shield_"..k,
		recipe = {
			{v, v, v},
			{v, v, v},
			{"", v, ""},
		},
	})
end

minetest.after(0, function()
	table.insert(armor.elements, "shield")
end)

