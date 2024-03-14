local nodes =
{
	--{"node_name", "node description", "texture (optional to omit if the texture is same name as node uvents_name)"},
	{"ceiling_tile", "Small ceiling A/C Unit", "uvents_small_ac", },
	{"ceilingvent_round", "Ceiling Vent Round", },
	{"ceilingvent_square", "Ceiling Vent Square", },
	{"large_ac", "Large Ceiling A/C Unit", },
	{"large_ceilingvent_plate", "Large Ceiling Vent Plate", "uvents_ceilingvent_plate_large", },
	{"small_ceilingvent_plate", "Small Ceiling Vent Plate", "uvents_ceilingvent_plate_small", },
	{"doorcurtain_centered", "Centered Air Curtain", },
	{"doorcurtain_compact", "Compact Air Curtain", },
	{"doorcurtain_standard", "Standard Air Curtain (for doors)", },
	{"industrial_ceiling_ac", "Industrial Ceiling A/C Unit", "uvents_industrial_ceiling_ac1", },
	{"poppet_valve", "Poppet Valve", },
	{"ceilingvent_diffuser", "Ceiling Air Diffuser", },
	{"ceilingvent_industrial", "Industrial Ceiling Vent", },
	{"ceilingvent_plain", "Plan Ceiling Vent", },
	{"ventilation_shaft", "ventilation Shaft", },
}

local modname = "uvents:"

for i = 1, #nodes, 1 do
	local node_name = modname .. nodes[i][1]
	local node_description = nodes[i][2] or "Uvents Node"
	local node_texture = (nodes[i][3] or "uvents_" .. nodes[i][1]) .. ".png"
	minetest.register_node(node_name,
	{
		description = node_description,
		paramtype = "none",
		on_rotate = screwdriver.dispense_item,
		paramtype2 = "colorfacedir",
		palette = "unifieddyes_palette_colorwallmounted.png",
		groups = {cracky = 2, ud_param2_colorable = 1, },
		inventory_image = node_texture,
		tiles =
		{
			"uvents_ventilation_shaft.png",
			node_texture,
			"uvents_ventilation_shaft.png",
		},
	})
end
