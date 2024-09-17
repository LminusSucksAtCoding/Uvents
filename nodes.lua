local nodes =
{
	--{"node_name", "node description", "texture (optional to omit if the texture is same name as node uvents_name)"},
	{"ceiling_tile",            "Small Ceiling A/C Unit",            "uvents_small_ac",              },
	{"ceilingvent_round",       "Ceiling Vent (Round)",                                              },
	{"ceilingvent_square",      "Ceiling Vent (Square)",                                             },
	{"large_ac",                "Large Ceiling A/C Unit",                                            },
	{"large_ceilingvent_plate", "Large Ceiling Vent Plate",         "uvents_ceilingvent_plate_large",},
	{"small_ceilingvent_plate", "Small Ceiling Vent Plate",         "uvents_ceilingvent_plate_small",},
	{"doorcurtain_centered",    "Centered Air Curtain",                                              },
	{"doorcurtain_compact",     "Compact Air Curtain",                                               },
	{"doorcurtain_standard",    "Standard Air Curtain (for doors)",                                  },
	{"industrial_ceiling_ac",   "Industrial Ceiling A/C Unit",      "uvents_industrial_ceiling_ac1", },
	{"poppet_valve",            "Poppet Valve",                                                      },
	{"ceilingvent_diffuser",    "Ceiling Air Diffuser",                                              },
	{"ceilingvent_industrial",  "Industrial Ceiling Vent",                                           },
	{"ceilingvent_plain",       "Plain Ceiling Vent",                                                },
	{"ventilation_shaft",       "Ventilation Shaft",                                                 },
}

local modname = "uvents:"

for _,def in ipairs(nodes) do
	local node_name = modname .. def[1]
	local node_description = def[2] or "Uvents Node"
	local node_texture = (def[3] or "uvents_" .. def[1]) .. ".png"
	minetest.register_node(node_name,
	{
		description = node_description,
		paramtype2 = "facedir",
		groups = {cracky = 2,},
		inventory_image = node_texture,
		tiles =
		{
			"uvents_ventilation_shaft.png",
			node_texture,
			"uvents_ventilation_shaft.png",
		},
	})
end
