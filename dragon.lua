dofile(minetest.get_modpath("mobs").."/api.lua")

-------------------
-------------------
------Dragon-------
-------------------
-------------------
mobs:register_mob("mob_dragon:dragon", {
	type = "monster",
	hp_max = 8,
	collisionbox = {-3, -3, -3, 3, 3, 3},
	visual = "mesh",
	mesh = "mob_dragon.b3d",
	textures = {"mob_dragon.png"},
	visual_size = {x=5, y=5},
	makes_footstep_sound = false,
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 3,
	damage = 4,
	drops = {},
	armor = 100,
	drawtype = "front",
	light_resistant = true,
	water_damage = 1,
	lava_damage = 1,
	light_damage = 0,
	attack_type = "dogfight",
	animation = {
		stand_start = 0,
		stand_end = 40,
		walk_start = 41,
		walk_end = 61,
		run_start = 62,
		run_end = 103,
		punch_start = 104,
		punch_end = 113,
		speed_normal = 62,
		speed_run = 103,
	},
})

minetest.register_craftitem("mob_dragon:dragon", {
	description = "Dragon",
	inventory_image = "default_wood.png",

	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.above then
			minetest.env:add_entity(pointed_thing.above, "mob_dragon:dragon")
			itemstack:take_item()
		end
		return itemstack
	end,
})
