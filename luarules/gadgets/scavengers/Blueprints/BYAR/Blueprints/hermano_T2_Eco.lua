local blueprintConfig = VFS.Include('luarules/gadgets/scavengers/Blueprints/' .. Game.gameShortName .. '/blueprint_tiers.lua')
local tiers = blueprintConfig.Tiers
local types = blueprintConfig.BlueprintTypes
local UDN = UnitDefNames

--	facing:
--  0 - south
--  1 - east
--  2 - north
--  3 - west


local function HermanoT2Eco0()
	return {
		type = types.Land,
		tiers = { tiers.T2, tiers.T3, tiers.T4 },
		radius = 224,
		buildings = {
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = 32, zOffset = 153, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = -160, zOffset = 89, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = -128, zOffset = -167, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = 0, zOffset = 153, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = 160, zOffset = -71, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = 32, zOffset = -167, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = -96, zOffset = -167, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = 160, zOffset = -103, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = 96, zOffset = 153, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = 96, zOffset = -167, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = -128, zOffset = 153, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = -32, zOffset = -167, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = 64, zOffset = -167, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = 160, zOffset = -167, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = -160, zOffset = -167, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = 0, zOffset = -167, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = -160, zOffset = 153, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = 64, zOffset = 153, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = -160, zOffset = -135, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = 160, zOffset = 121, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = -32, zOffset = 153, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = -160, zOffset = 57, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = 160, zOffset = -135, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = 160, zOffset = 153, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = 128, zOffset = -167, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = -64, zOffset = 153, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = -160, zOffset = 121, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = -96, zOffset = 153, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = 128, zOffset = 153, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = -64, zOffset = -167, direction = 2},
			{ unitDefID = UnitDefNames.armada_sneakypete_scav.id, xOffset = 0, zOffset = -23, direction = 2},
			{ unitDefID = UnitDefNames.corflak_scav.id, xOffset = 0, zOffset = 201, direction = 2},
			{ unitDefID = UnitDefNames.corflak_scav.id, xOffset = 0, zOffset = -215, direction = 2},
			{ unitDefID = UnitDefNames.cortex_advancedenergyconverter_scav.id, xOffset = 96, zOffset = 89, direction = 2},
			{ unitDefID = UnitDefNames.cortex_advancedenergyconverter_scav.id, xOffset = -32, zOffset = 25, direction = 2},
			{ unitDefID = UnitDefNames.cortex_advancedenergyconverter_scav.id, xOffset = 32, zOffset = 25, direction = 2},
			{ unitDefID = UnitDefNames.cortex_advancedenergyconverter_scav.id, xOffset = 32, zOffset = 89, direction = 2},
			{ unitDefID = UnitDefNames.cortex_advancedenergyconverter_scav.id, xOffset = -32, zOffset = 89, direction = 2},
			{ unitDefID = UnitDefNames.cortex_advancedenergyconverter_scav.id, xOffset = -96, zOffset = 25, direction = 2},
			{ unitDefID = UnitDefNames.cortex_advancedenergyconverter_scav.id, xOffset = 96, zOffset = 25, direction = 2},
			{ unitDefID = UnitDefNames.cortex_advancedenergyconverter_scav.id, xOffset = -96, zOffset = 89, direction = 2},
			{ unitDefID = UnitDefNames.cortex_calamity_scav.id, xOffset = 224, zOffset = -151, direction = 2},
			{ unitDefID = UnitDefNames.cortex_calamity_scav.id, xOffset = -224, zOffset = 137, direction = 2},
			{ unitDefID = UnitDefNames.armada_advancedfusionreactor_scav.id, xOffset = 64, zOffset = -87, direction = 2},
			{ unitDefID = UnitDefNames.armada_advancedfusionreactor_scav.id, xOffset = -64, zOffset = -87, direction = 2},
		},
	}
end

local function HermanoT2Eco1()
	return {
		type = types.Land,
		tiers = { tiers.T2, tiers.T3, tiers.T4 },
		radius = 304,
		buildings = {
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = -304, zOffset = 176, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = 304, zOffset = 144, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = -272, zOffset = -176, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = 272, zOffset = -176, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = 304, zOffset = -176, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = 32, zOffset = 176, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = 304, zOffset = -112, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = -240, zOffset = -176, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = 240, zOffset = 176, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = 304, zOffset = -144, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = 240, zOffset = -176, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = 32, zOffset = -176, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = -32, zOffset = 144, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = 304, zOffset = 112, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = -32, zOffset = -144, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = 32, zOffset = -144, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = 272, zOffset = 176, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = -32, zOffset = -176, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = -272, zOffset = 176, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = -304, zOffset = -112, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = -304, zOffset = -176, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = 0, zOffset = 176, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = 32, zOffset = 144, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = 0, zOffset = -176, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = -304, zOffset = 144, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = -304, zOffset = 112, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = -240, zOffset = 176, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = -32, zOffset = 176, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = 304, zOffset = 176, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = -304, zOffset = -144, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = 64, zOffset = 96, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = 96, zOffset = 96, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = 64, zOffset = -96, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = 0, zOffset = -96, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = 224, zOffset = 64, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = 224, zOffset = 32, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = 192, zOffset = 96, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = 160, zOffset = 96, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = -224, zOffset = -96, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = -160, zOffset = -96, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = -96, zOffset = 96, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = 224, zOffset = -96, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = -64, zOffset = -96, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = 32, zOffset = 96, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = 0, zOffset = 96, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = -96, zOffset = -96, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = -32, zOffset = -96, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = 224, zOffset = 96, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = -192, zOffset = -96, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = -224, zOffset = 96, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = -224, zOffset = 32, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = 224, zOffset = -32, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = -64, zOffset = 96, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = -224, zOffset = -32, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = -224, zOffset = -64, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = 224, zOffset = -64, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = -224, zOffset = 64, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = -32, zOffset = 96, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = 192, zOffset = -96, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = 160, zOffset = -96, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = -192, zOffset = 96, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = -160, zOffset = 96, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = 96, zOffset = -96, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = 32, zOffset = -96, direction = 2},
			{ unitDefID = UnitDefNames.armada_pitbull_scav.id, xOffset = -264, zOffset = -136, direction = 2},
			{ unitDefID = UnitDefNames.armada_pitbull_scav.id, xOffset = 264, zOffset = 136, direction = 2},
			{ unitDefID = UnitDefNames.cortex_scorpion_scav.id, xOffset = 264, zOffset = -136, direction = 2},
			{ unitDefID = UnitDefNames.cortex_scorpion_scav.id, xOffset = -264, zOffset = 136, direction = 2},
			{ unitDefID = UnitDefNames.armada_arbalest_scav.id, xOffset = 0, zOffset = -144, direction = 2},
			{ unitDefID = UnitDefNames.corflak_scav.id, xOffset = 0, zOffset = 144, direction = 2},
			{ unitDefID = UnitDefNames.armada_advancedfusionreactor_scav.id, xOffset = 0, zOffset = 0, direction = 2},
			{ unitDefID = UnitDefNames.cortex_advancedfusionreactor_scav.id, xOffset = 128, zOffset = 0, direction = 2},
			{ unitDefID = UnitDefNames.cortex_advancedfusionreactor_scav.id, xOffset = -128, zOffset = 0, direction = 2},
		},
	}
end

local function HermanoT2Eco2()
	return {
		type = types.Land,
		tiers = { tiers.T2, tiers.T3, tiers.T4 },
		radius = 176,
		buildings = {
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = -112, zOffset = 176, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = -144, zOffset = 176, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = -176, zOffset = 176, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = 176, zOffset = -112, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = -176, zOffset = 144, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = 112, zOffset = -176, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = 144, zOffset = -176, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = 176, zOffset = -144, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = 176, zOffset = -176, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = -176, zOffset = 112, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = -80, zOffset = -48, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = 48, zOffset = 80, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = -48, zOffset = -80, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = 80, zOffset = 80, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = -80, zOffset = -80, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = 80, zOffset = 48, direction = 2},
			{ unitDefID = UnitDefNames.cortex_constructionturret_scav.id, xOffset = -40, zOffset = -40, direction = 2},
			{ unitDefID = UnitDefNames.cortex_constructionturret_scav.id, xOffset = 40, zOffset = 40, direction = 2},
			{ unitDefID = UnitDefNames.armada_pitbull_scav.id, xOffset = -136, zOffset = 136, direction = 2},
			{ unitDefID = UnitDefNames.cortex_scorpion_scav.id, xOffset = 136, zOffset = -136, direction = 2},
			{ unitDefID = UnitDefNames.armada_advancedfusionreactor_scav.id, xOffset = 48, zOffset = -48, direction = 2},
			{ unitDefID = UnitDefNames.cortex_advancedfusionreactor_scav.id, xOffset = -48, zOffset = 48, direction = 2},
		},
	}
end

local function HermanoT2Eco3()
	return {
		type = types.Land,
		tiers = { tiers.T2, tiers.T3, tiers.T4 },
		radius = 152,
		buildings = {
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = -112, zOffset = -104, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = 112, zOffset = 104, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = 144, zOffset = 40, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = -144, zOffset = -40, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = 144, zOffset = 72, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = 144, zOffset = 104, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = -80, zOffset = -104, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = -144, zOffset = -72, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = 80, zOffset = 104, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = -144, zOffset = -104, direction = 2},
			{ unitDefID = UnitDefNames.cortex_scorpion_scav.id, xOffset = 152, zOffset = -112, direction = 2},
			{ unitDefID = UnitDefNames.cortex_scorpion_scav.id, xOffset = -152, zOffset = 112, direction = 2},
			{ unitDefID = UnitDefNames.armada_hardenedmetalstorage_scav.id, xOffset = -80, zOffset = -40, direction = 2},
			{ unitDefID = UnitDefNames.armada_hardenedmetalstorage_scav.id, xOffset = 80, zOffset = 40, direction = 2},
			{ unitDefID = UnitDefNames.armada_hardenedmetalstorage_scav.id, xOffset = 0, zOffset = 40, direction = 2},
			{ unitDefID = UnitDefNames.armada_hardenedmetalstorage_scav.id, xOffset = 80, zOffset = -40, direction = 2},
			{ unitDefID = UnitDefNames.armada_hardenedmetalstorage_scav.id, xOffset = -80, zOffset = 40, direction = 2},
			{ unitDefID = UnitDefNames.armada_hardenedmetalstorage_scav.id, xOffset = 0, zOffset = -40, direction = 2},
		},
	}
end

local function HermanoT2Eco4()
	return {
		type = types.Land,
		tiers = { tiers.T2, tiers.T3, tiers.T4 },
		radius = 239,
		buildings = {
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = 71, zOffset = 119, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = -169, zOffset = -121, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = 231, zOffset = 23, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = -137, zOffset = -121, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = -73, zOffset = -121, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = 167, zOffset = 119, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = 135, zOffset = 119, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = -105, zOffset = -121, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = 103, zOffset = 119, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = 231, zOffset = -9, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = -217, zOffset = 23, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = -217, zOffset = -9, direction = 2},
			{ unitDefID = UnitDefNames.armada_pitbull_scav.id, xOffset = -241, zOffset = 79, direction = 2},
			{ unitDefID = UnitDefNames.armada_pitbull_scav.id, xOffset = 239, zOffset = -81, direction = 2},
			{ unitDefID = UnitDefNames.armada_pitbull_scav.id, xOffset = 239, zOffset = 79, direction = 2},
			{ unitDefID = UnitDefNames.armada_pitbull_scav.id, xOffset = -241, zOffset = -81, direction = 2},
			{ unitDefID = UnitDefNames.cortex_hardenedenergystorage_scav.id, xOffset = 47, zOffset = 47, direction = 2},
			{ unitDefID = UnitDefNames.cortex_hardenedenergystorage_scav.id, xOffset = 143, zOffset = 47, direction = 2},
			{ unitDefID = UnitDefNames.cortex_hardenedenergystorage_scav.id, xOffset = 143, zOffset = -49, direction = 2},
			{ unitDefID = UnitDefNames.cortex_hardenedenergystorage_scav.id, xOffset = -145, zOffset = 47, direction = 2},
			{ unitDefID = UnitDefNames.cortex_hardenedenergystorage_scav.id, xOffset = -49, zOffset = -49, direction = 2},
			{ unitDefID = UnitDefNames.cortex_hardenedenergystorage_scav.id, xOffset = -49, zOffset = 47, direction = 2},
			{ unitDefID = UnitDefNames.cortex_hardenedenergystorage_scav.id, xOffset = -145, zOffset = -49, direction = 2},
			{ unitDefID = UnitDefNames.cortex_hardenedenergystorage_scav.id, xOffset = 47, zOffset = -49, direction = 2},
		},
	}
end

local function HermanoT2Eco5()
	return {
		type = types.Land,
		tiers = { tiers.T2, tiers.T3, tiers.T4 },
		radius = 144,
		buildings = {
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = 80, zOffset = 144, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = -144, zOffset = -144, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = 144, zOffset = 144, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = 112, zOffset = 144, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = -80, zOffset = -144, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = 144, zOffset = 80, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = -144, zOffset = -80, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = -144, zOffset = -112, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = -112, zOffset = -144, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = 144, zOffset = 112, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = 112, zOffset = -48, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = -112, zOffset = 112, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = 16, zOffset = -112, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = 48, zOffset = -112, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = -48, zOffset = 112, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = 80, zOffset = -112, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = 112, zOffset = -16, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = -112, zOffset = 80, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = -112, zOffset = 16, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = 112, zOffset = -80, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = -112, zOffset = 48, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = 112, zOffset = -112, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = -16, zOffset = 112, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 2), xOffset = -80, zOffset = 112, direction = 2},
			{ unitDefID = UnitDefNames.cortex_constructionturret_scav.id, xOffset = -40, zOffset = -88, direction = 2},
			{ unitDefID = UnitDefNames.cortex_constructionturret_scav.id, xOffset = 88, zOffset = 40, direction = 2},
			{ unitDefID = UnitDefNames.cortex_constructionturret_scav.id, xOffset = 40, zOffset = 88, direction = 2},
			{ unitDefID = UnitDefNames.cortex_constructionturret_scav.id, xOffset = -88, zOffset = -40, direction = 2},
			{ unitDefID = UnitDefNames.armada_keeper_scav.id, xOffset = 32, zOffset = 32, direction = 2},
			{ unitDefID = UnitDefNames.armada_keeper_scav.id, xOffset = -32, zOffset = -32, direction = 2},
			{ unitDefID = UnitDefNames.armada_pulsar_scav.id, xOffset = -96, zOffset = -96, direction = 2},
			{ unitDefID = UnitDefNames.armada_pulsar_scav.id, xOffset = 96, zOffset = 96, direction = 2},
			{ unitDefID = UnitDefNames.armada_advancedfusionreactor_scav.id, xOffset = 48, zOffset = -48, direction = 2},
			{ unitDefID = UnitDefNames.armada_advancedfusionreactor_scav.id, xOffset = -48, zOffset = 48, direction = 2},
		},
	}
end

local function HermanoT2Eco6()
	return {
		type = types.Land,
		tiers = { tiers.T2, tiers.T3, tiers.T4 },
		radius = 206,
		buildings = {
			{ unitDefID = UnitDefNames.armada_windturbinet2_scav.id, xOffset = 134, zOffset = -15, direction = 2},
			{ unitDefID = UnitDefNames.armada_windturbinet2_scav.id, xOffset = -186, zOffset = 129, direction = 2},
			{ unitDefID = UnitDefNames.armada_windturbinet2_scav.id, xOffset = -90, zOffset = -95, direction = 2},
			{ unitDefID = UnitDefNames.armada_windturbinet2_scav.id, xOffset = 38, zOffset = 193, direction = 2},
			{ unitDefID = UnitDefNames.armada_windturbinet2_scav.id, xOffset = 22, zOffset = -47, direction = 2},
			{ unitDefID = UnitDefNames.armada_windturbinet2_scav.id, xOffset = -74, zOffset = 161, direction = 2},
			{ unitDefID = UnitDefNames.cortex_advancedwindturbine_scav.id, xOffset = 166, zOffset = -127, direction = 2},
			{ unitDefID = UnitDefNames.cortex_advancedwindturbine_scav.id, xOffset = -26, zOffset = -191, direction = 2},
			{ unitDefID = UnitDefNames.cortex_advancedwindturbine_scav.id, xOffset = -26, zOffset = 49, direction = 2},
			{ unitDefID = UnitDefNames.cortex_advancedwindturbine_scav.id, xOffset = 70, zOffset = -159, direction = 2},
			{ unitDefID = UnitDefNames.cortex_advancedwindturbine_scav.id, xOffset = -122, zOffset = 17, direction = 2},
			{ unitDefID = UnitDefNames.cortex_advancedwindturbine_scav.id, xOffset = 70, zOffset = 81, direction = 2},
			{ unitDefID = UnitDefNames.cortex_scorpion_scav.id, xOffset = -162, zOffset = -71, direction = 2},
			{ unitDefID = UnitDefNames.cortex_scorpion_scav.id, xOffset = 110, zOffset = 169, direction = 2},
			{ unitDefID = UnitDefNames.cortex_scorpion_scav.id, xOffset = 206, zOffset = -39, direction = 2},
			{ unitDefID = UnitDefNames.corflak_scav.id, xOffset = -90, zOffset = -159, direction = 2},
			{ unitDefID = UnitDefNames.corflak_scav.id, xOffset = 150, zOffset = 49, direction = 2},
			{ unitDefID = UnitDefNames.corflak_scav.id, xOffset = -186, zOffset = 65, direction = 2},
		},
	}
end

return {
    HermanoT2Eco0,
    HermanoT2Eco1,
    HermanoT2Eco2,
    HermanoT2Eco3,
    HermanoT2Eco4,
    HermanoT2Eco5,
    HermanoT2Eco6,
}