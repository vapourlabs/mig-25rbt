--[[
	GNU AFFERO GENERAL PUBLIC LICENSE
	Version 3, 19 November 2007

	Copyright (C) 2007 Free Software Foundation, Inc. <https://fsf.org/>
	Everyone is permitted to copy and distribute verbatim copies
	of this license document, but changing it is not allowed.
]]--

local self_ID = "MiG-25RBT"
local systems_path = current_mod_path .. "/Cockpit/Scripts"
local themes_path = current_mod_path .. "/Theme/ME/"
local model_path = current_mod_path .. "/Shapes"
-- local liveries_path = current_mod_path .. "/Liveries"

declare_plugin(self_ID .. " Foxbat by Vapour Labs", {
	displayName = _(self_ID .. " Foxbat"),
	developerName = "Vapour Labs",

	image = "FC.bmp",
	installed = true,
	dirName = current_mod_path,
	fileMenuName = _(self_ID),

	version = __DCS_VERSION__,
	state = "installed",
	info = _("The " .. self_ID .. " is a single-seat reconnaissance-bomber with revised ELINT equipment, the *Tangazh*, and a Peleng automatic bombing system. The aircraft can carry a maximum of ten 500 kg. (1,100 lb.) bombs. It is among the fastest military aircraft to enter service. Designed by the Soviet Union"s Mikoyan-Gurevich bureau, it is one of the few combat aircraft built primarily using stainless steel."),

	InputProfiles = {[self_ID] = current_mod_path .. "/Input/" .. self_ID},

	Skins = {{name = _(self_ID), dir = "Theme"}},

	--- TODO: Implement missions for training, campaigns and etc.
	-- Missions ={{name = _(self_ID), dir = "Missions"}},		
	LogBook = {{name = _(self_ID), type = self_ID}},	
	
	Options = {
		{
			name = _(self_ID),
			nameId = self_ID,
			dir = "Options",
			CLSID = "{" .. self_ID .. " options}"
		},
	}, 	
})

-- Mounts all the needed directory paths of the mod for DCS to interpret.
local mount_vfs; do
	mount_vfs_texture_path(themes_path)

	--- TODO: Implement cockpit textures as compressed .ZIP file.
	-- mount_vfs_texture_path(current_mod_path ..  "/Cockpit/Textures/MIG-25T-CPT-TEXTURES")
	mount_vfs_model_path(model_path)

	--- TODO: Implement liveries.
	-- mount_vfs_liveries_path(liveries_path)
end

make_flyable(self_ID, systems_path, nil, current_mod_path .. "/comm.lua")
plugin_done()
