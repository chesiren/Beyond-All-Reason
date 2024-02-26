local blueprintConfig = VFS.Include('luarules/gadgets/scavengers/Blueprints/' .. Game.gameShortName .. '/blueprint_tiers.lua')
local tiers = blueprintConfig.Tiers
local types = blueprintConfig.BlueprintTypes
local UDN = UnitDefNames


local function blueprint0()
	return {
		type = types.Land,
		tiers = {tiers.T1},
		radius = 48,
		buildings = {
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = -48, zOffset = 48, direction = 0},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = -48, zOffset = -16, direction = 1},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = 48, zOffset = -16, direction = 3},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = 16, zOffset = -48, direction = 0},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = 48, zOffset = 48, direction = 0},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = 48, zOffset = 16, direction = 3},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = -48, zOffset = -48, direction = 0},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = -16, zOffset = 48, direction = 2},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = 48, zOffset = -48, direction = 0},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = -16, zOffset = -48, direction = 0},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = -48, zOffset = 16, direction = 1},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = 16, zOffset = 48, direction = 2},
			{ unitDefID = UnitDefNames.cortex_agitator_scav.id, xOffset = 0, zOffset = 0, direction = 0},
		},
	}
end

local function blueprint1()
	return {
		type = types.Land,
		tiers = {tiers.T1, tiers.T2},
		radius = 146,
		buildings = {
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = -78, zOffset = 62, direction = 0},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = 18, zOffset = 62, direction = 0},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = 82, zOffset = 62, direction = 0},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = 146, zOffset = 62, direction = 0},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = -110, zOffset = 62, direction = 0},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = -142, zOffset = 62, direction = 0},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = 50, zOffset = 62, direction = 0},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = -46, zOffset = 62, direction = 0},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = 114, zOffset = 62, direction = 0},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = -14, zOffset = 62, direction = 0},
			{ unitDefID = UnitDefNames.cortex_beholder_scav.id, xOffset = -70, zOffset = -26, direction = 0},
			{ unitDefID = UnitDefNames.cortex_beholder_scav.id, xOffset = 138, zOffset = 6, direction = 0},
			{ unitDefID = UnitDefNames.cortex_beholder_scav.id, xOffset = 42, zOffset = -26, direction = 0},
			{ unitDefID = UnitDefNames.cortex_beholder_scav.id, xOffset = -150, zOffset = 6, direction = 0},
			{ unitDefID = UnitDefNames.cortex_radartower_scav.id, xOffset = -126, zOffset = -98, direction = 0},
			{ unitDefID = UnitDefNames.cortex_radartower_scav.id, xOffset = 114, zOffset = -98, direction = 0},
			{ unitDefID = UnitDefNames.cortex_castro_scav.id, xOffset = 50, zOffset = -98, direction = 0},
			{ unitDefID = UnitDefNames.cortex_sam_scav.id, xOffset = -102, zOffset = -42, direction = 0},
			{ unitDefID = UnitDefNames.cortex_sam_scav.id, xOffset = 106, zOffset = -42, direction = 0},
			{ unitDefID = UnitDefNames.cortex_constructionturret_scav.id, xOffset = 58, zOffset = -138, direction = 0},
			{ unitDefID = UnitDefNames.cortex_constructionturret_scav.id, xOffset = -70, zOffset = -90, direction = 0},
			{ unitDefID = UnitDefNames.cortex_warden_scav.id, xOffset = 50, zOffset = 30, direction = 0},
			{ unitDefID = UnitDefNames.cortex_warden_scav.id, xOffset = -46, zOffset = 30, direction = 0},
			{ unitDefID = UnitDefNames.cortex_agitator_scav.id, xOffset = -94, zOffset = 14, direction = 0},
			{ unitDefID = UnitDefNames.cortex_agitator_scav.id, xOffset = 98, zOffset = 14, direction = 0},
			{ unitDefID = UnitDefNames.cortex_agitator_scav.id, xOffset = 2, zOffset = 14, direction = 0},
			{ unitDefID = UnitDefNames.cortex_juno_scav.id, xOffset = -14, zOffset = -50, direction = 0},
		},
	}
end

local function blueprint2()
	return {
		type = types.Land,
		tiers = {tiers.T1, tiers.T2},
		radius = 156,
		buildings = {
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = 153, zOffset = -36, direction = 0},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = -103, zOffset = 156, direction = 0},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = 57, zOffset = -4, direction = 0},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = -7, zOffset = 60, direction = 0},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = 153, zOffset = -100, direction = 0},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = 89, zOffset = -36, direction = 0},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = 153, zOffset = -68, direction = 0},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = -71, zOffset = 156, direction = 0},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = -39, zOffset = 156, direction = 0},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = 121, zOffset = -36, direction = 0},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = 57, zOffset = -36, direction = 0},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = 57, zOffset = 28, direction = 0},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = -39, zOffset = 60, direction = 0},
			{ unitDefID = BPWallOrPopup('scav', 1), xOffset = -39, zOffset = 92, direction = 0},
            { unitDefID = BPWallOrPopup('scav', 1), xOffset = 25, zOffset = 60, direction = 0},
			{ unitDefID = UnitDefNames.cortex_beholder_scav.id, xOffset = -95, zOffset = -60, direction = 0},
			{ unitDefID = UnitDefNames.cortex_beholder_scav.id, xOffset = -127, zOffset = 116, direction = 0},
			{ unitDefID = UnitDefNames.cortex_beholder_scav.id, xOffset = 113, zOffset = -140, direction = 0},
			{ unitDefID = UnitDefNames.cortex_beholder_scav.id, xOffset = -15, zOffset = -28, direction = 0},
			{ unitDefID = UnitDefNames.cortex_radartower_scav.id, xOffset = -55, zOffset = 12, direction = 0},
			{ unitDefID = UnitDefNames.cortex_radartower_scav.id, xOffset = 9, zOffset = -52, direction = 0},
			{ unitDefID = UnitDefNames.cortex_castro_scav.id, xOffset = -135, zOffset = -68, direction = 0},
			{ unitDefID = UnitDefNames.cortex_sam_scav.id, xOffset = -127, zOffset = 52, direction = 0},
			{ unitDefID = UnitDefNames.cortex_sam_scav.id, xOffset = 49, zOffset = -124, direction = 0},
			{ unitDefID = UnitDefNames.cortex_constructionturret_scav.id, xOffset = -127, zOffset = -12, direction = 0},
			{ unitDefID = UnitDefNames.cortex_constructionturret_scav.id, xOffset = -15, zOffset = -124, direction = 0},
			{ unitDefID = UnitDefNames.cortex_warden_scav.id, xOffset = -71, zOffset = 60, direction = 0},
			{ unitDefID = UnitDefNames.cortex_warden_scav.id, xOffset = 57, zOffset = -68, direction = 0},
			{ unitDefID = UnitDefNames.cortex_agitator_scav.id, xOffset = 9, zOffset = 12, direction = 0},
			{ unitDefID = UnitDefNames.cortex_agitator_scav.id, xOffset = 105, zOffset = -84, direction = 0},
			{ unitDefID = UnitDefNames.cortex_agitator_scav.id, xOffset = -87, zOffset = 108, direction = 0},
			{ unitDefID = UnitDefNames.cortex_juno_scav.id, xOffset = -55, zOffset = -52, direction = 0},
		},
	}
end


return {
    blueprint0,
    blueprint1,
    blueprint2,
}