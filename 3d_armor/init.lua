ARMOR_MOD_NAME = minetest.get_current_modname()
dofile(minetest.get_modpath(ARMOR_MOD_NAME).."/armor.lua")

if ARMOR_MATERIALS.steel then
	minetest.register_tool("3d_armor:helmet_steel", {
		description = "Steel Helmet",
		inventory_image = "3d_armor_inv_helmet_steel.png",
		groups = {armor_head=10, armor_heal=0, armor_use=500},
		wear = 0,
	})
	minetest.register_tool("3d_armor:chestplate_steel", {
		description = "Steel Chestplate",
		inventory_image = "3d_armor_inv_chestplate_steel.png",
		groups = {armor_torso=15, armor_heal=0, armor_use=500},
		wear = 0,
	})
	minetest.register_tool("3d_armor:leggings_steel", {
		description = "Steel Leggings",
		inventory_image = "3d_armor_inv_leggings_steel.png",
		groups = {armor_legs=15, armor_heal=0, armor_use=500},
		wear = 0,
	})
	minetest.register_tool("3d_armor:boots_steel", {
		description = "Steel Boots",
		inventory_image = "3d_armor_inv_boots_steel.png",
		groups = {armor_feet=10, armor_heal=0, armor_use=500},
		wear = 0,
	})
end

if ARMOR_MATERIALS.bronze then
	minetest.register_tool("3d_armor:helmet_bronze", {
		description = "Bronze Helmet",
		inventory_image = "3d_armor_inv_helmet_bronze.png",
		groups = {armor_head=10, armor_heal=6, armor_use=250},
		wear = 0,
	})
	minetest.register_tool("3d_armor:chestplate_bronze", {
		description = "Bronze Chestplate",
		inventory_image = "3d_armor_inv_chestplate_bronze.png",
		groups = {armor_torso=15, armor_heal=6, armor_use=250},
		wear = 0,
	})
	minetest.register_tool("3d_armor:leggings_bronze", {
		description = "Bronze Leggings",
		inventory_image = "3d_armor_inv_leggings_bronze.png",
		groups = {armor_legs=15, armor_heal=6, armor_use=250},
		wear = 0,
	})
	minetest.register_tool("3d_armor:boots_bronze", {
		description = "Bronze Boots",
		inventory_image = "3d_armor_inv_boots_bronze.png",
		groups = {armor_feet=10, armor_heal=6, armor_use=250},
		wear = 0,
	})
end

if ARMOR_MATERIALS.gold then
	minetest.register_tool("3d_armor:helmet_gold", {
		description = "Gold Helmet",
		inventory_image = "3d_armor_inv_helmet_gold.png",
		groups = {armor_head=10, armor_heal=6, armor_use=250},
		wear = 0,
	})
	minetest.register_tool("3d_armor:chestplate_gold", {
		description = "Gold Chestplate",
		inventory_image = "3d_armor_inv_chestplate_gold.png",
		groups = {armor_torso=15, armor_heal=6, armor_use=250},
		wear = 0,
	})
	minetest.register_tool("3d_armor:leggings_gold", {
		description = "Gold Leggings",
		inventory_image = "3d_armor_inv_leggings_gold.png",
		groups = {armor_legs=15, armor_heal=6, armor_use=250},
		wear = 0,
	})
	minetest.register_tool("3d_armor:boots_gold", {
		description = "Gold Boots",
		inventory_image = "3d_armor_inv_boots_gold.png",
		groups = {armor_feet=10, armor_heal=6, armor_use=250},
		wear = 0,
	})
end

for k, v in pairs(ARMOR_MATERIALS) do
	minetest.register_craft({
		output = "3d_armor:helmet_"..k,
		recipe = {
			{v, v, v},
			{v, "", v},
			{"", "", ""},
		},
	})
	minetest.register_craft({
		output = "3d_armor:chestplate_"..k,
		recipe = {
			{v, "", v},
			{v, v, v},
			{v, v, v},
		},
	})
	minetest.register_craft({
		output = "3d_armor:leggings_"..k,
		recipe = {
			{v, v, v},
			{v, "", v},
			{v, "", v},
		},
	})
	minetest.register_craft({
		output = "3d_armor:boots_"..k,
		recipe = {
			{v, "", v},
			{v, "", v},
		},
	})
end

