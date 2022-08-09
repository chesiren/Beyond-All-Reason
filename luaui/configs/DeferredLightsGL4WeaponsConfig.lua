-- This configures all the lights weapon effects, including:
	-- Projectile attached lights
	-- Muzzle flashes 
	-- Explosion lights
	-- Pieceprojectiles (gibs on death) lights
-- note that weapondef customparams need to be moved out of unitdefs, for ease of configability. 
	-- customparams= {
		-- expl_light_skip = bool , -- no explosion on projectile death
		-- expl_light_color = {rgba} , -- color of the explosion light at peak?
		-- expl_light_opacity = a, -- alpha or power of the light
		-- expl_light_mult = ,-- fuck if i know?
		-- expl_light_radius = , -- radius
		-- expl_light_radius_mult = , -- why?
		-- expl_light_life = , life of the expl light?
-- concept is:
	-- Make a few base classes of lights
	-- auto-assign the majority
	-- offer overrideability 
-- note that Y offset will be very different for points and for beams!
-- (c) Beherith (mysterme@gmail.com)

local exampleLight = {
	lightType = 'point', -- or cone or beam
	pieceName = nil, -- optional
	lightConfig = {
		posx = 0, posy = 0, posz = 0, radius = 0, 
		r = 1, g = 1, b = 1, a = 1, 
		color2r = 1, color2g = 1, color2b = 1, colortime = 15, -- point lights only, colortime in seconds for unit-attached
		dirx = 0, diry = 0, dirz = 1, theta = 0.5,  -- cone lights only, specify direction and half-angle in radians
		pos2x = 100, pos2y = 100, pos2z = 100, -- beam lights only, specifies the endpoint of the beam
		modelfactor = 1, specular = 1, scattering = 1, lensflare = 1, 
		lifetime = 0, sustain = 1, 	aninmtype = 0, -- unused
	},
}


-- Local Variables

--------------------------------------------------------------------------------
-- Config

-- Config order is:
-- Auto-assign a lightclass to each weaponDefID
-- Override on a per-weaponDefID basis, and copy table before overriding

--------------------------------General Base Light Classes for further useage --------
local BaseClasses = {
	LaserProjectile = {
		lightType = 'beam', -- or cone or beam
		lightConfig = {
			posx = 0, posy = 0, posz = 0, radius = 200, 
			r = 1, g = 1, b = 1, a = 1, 
			pos2x = 100, pos2y = 1000, pos2z = 100, -- beam lights only, specifies the endpoint of the beam
			modelfactor = 1, specular = 1, scattering = 1, lensflare = 1, 
			lifetime = 0, sustain = 1, 	aninmtype = 0, -- unused
		},
	},

	CannonProjectile = {
		lightType = 'point', -- or cone or beam
		lightConfig = {
			posx = 0, posy = 0, posz = 0, radius = 200, 
			r = 1, g = 1, b = 1, a = 1, 
			color2r = 0.75, color2g = 0.75, color2b = 0.75, colortime = 0.6, -- point lights only, colortime in seconds for unit-attached
			modelfactor = 1, specular = 1, scattering = 1, lensflare = 1, 
			lifetime = 0, sustain = 1, 	aninmtype = 0, -- unused
		},
	},

	MissileProjectile = {
		lightType = 'point', -- or cone or beam
		lightConfig = {
			posx = 0, posy = 0, posz = 0, radius = 200, 
			r = 1, g = 1, b = 1, a = 1, 
			color2r = 0.75, color2g = 0.75, color2b = 0.75, colortime = 0.6, -- point lights only, colortime in seconds for unit-attached
			modelfactor = 1, specular = 1, scattering = 1, lensflare = 1, 
			lifetime = 0, sustain = 1, 	aninmtype = 0, -- unused
		},
	},
	
	TorpedoProjectile = {
		lightType = 'cone', -- or cone or beam
		lightConfig = {
			posx = 0, posy = 0, posz = 0, radius = 200, 
			r = 1, g = 1, b = 1, a = 1, 
			dirx = 0, diry = 0, dirz = 1, theta = 0.2,  -- cone lights only, specify direction and half-angle in radians
			modelfactor = 1, specular = 1, scattering = 1, lensflare = 1, 
			lifetime = 0, sustain = 1, 	aninmtype = 0, -- unused
		},
	},
	
	FlameProjectile = {
		lightType = 'point', -- or cone or beam
		lightConfig = {
			posx = 0, posy = 0, posz = 0, radius = 200, 
			r = 1, g = 1, b = 1, a = 1, 
			color2r = 0.75, color2g = 0.75, color2b = 0.75, colortime = 0.6, -- point lights only, colortime in seconds for unit-attached
			modelfactor = 1, specular = 1, scattering = 1, lensflare = 1, 
			lifetime = 0, sustain = 1, 	aninmtype = 0, -- unused
		},
	},
	
	Explosion = { -- spawned on explosions
		lightType = 'point', -- or cone or beam
		yOffset = 0, -- Y offsets are only ever used for explosions!
		lightConfig = {
			posx = 0, posy = 0, posz = 0, radius = 200, 
			r = 1, g = 1, b = 1, a = 1, 
			color2r = 0.75, color2g = 0.75, color2b = 0.75, colortime = 0.6, -- point lights only, colortime in seconds for unit-attached
			modelfactor = 1, specular = 1, scattering = 1, lensflare = 1, 
			lifetime = 30, sustain = 10, 	aninmtype = 0, -- unused
		},
	},
	
	MuzzleFlash = { -- spawned on projectilecreated
		lightType = 'point', -- or cone or beam
		lightConfig = {
			posx = 0, posy = 0, posz = 0, radius = 200, 
			r = 1, g = 1, b = 1, a = 1, 
			color2r = 0.75, color2g = 0.75, color2b = 0.75, colortime = 0.6, -- point lights only, colortime in seconds for unit-attached
			modelfactor = 1, specular = 1, scattering = 1, lensflare = 1, 
			lifetime = 30, sustain = 10, 	aninmtype = 0, -- unused
		},
	},
}


local SizeRadius = {Tiny = 50, Small = 100, Medium = 200, Large = 400, Mega = 800, Giga = 1600, Tera = 3600}
local ColorSets = { -- TODO add advanced dual-color sets!
	Red = 		{r = 1, g = 0, b = 0},
	Green = 	{r = 0, g = 1, b = 0},
	Blue = 		{r = 0, g = 0, b = 1},
	Yellow = 	{r = 1, g = 1, b = 0},
	White = 	{r = 1, g = 1, b = 1},
	Warm  = 	{r = 1, g = 0.75, b = 0.5},
	Cold  = 	{r = 0.5, g = 0.75, b = 1.0},
	Team  = 	{r = -1, g = -1, b = -1},
}

local Lifetimes = {Fast = 5, Quick = 10, Moderate = 30, Long = 90, Glacial = 270}

local lightClasses = {}

local function deepcopy(orig)
	local orig_type = type(orig)
	local copy
	if orig_type == 'table' then
		copy = {}
		for orig_key, orig_value in next, orig, nil do
			copy[deepcopy(orig_key)] = deepcopy(orig_value)
		end
		--setmetatable(copy, deepcopy(getmetatable(orig)))
	else -- number, string, boolean, etc
		copy = orig
	end
	return copy
end
local usedclasses = 0
local function GetLightClass(baseClassname, colorkey, sizekey, lifetimekey)
	local lightClassKey = baseClassname .. (colorkey or "") .. (sizekey or "") .. (lifetimekey or "")
	if lightClasses[lightClassKey] then 
		return lightClasses[lightClassKey] 
	else
		lightClasses[lightClassKey] = deepcopy(BaseClasses[baseClassname])
		lightClasses[lightClassKey].lightClassName = lightClassKey
		usedclasses = usedclasses + 1
		local lightConfig = lightClasses[lightClassKey].lightConfig
		if sizekey then 
			lightConfig.radius = SizeRadius[sizekey]
		end
		if colorkey then 
			lightConfig.r = ColorSets[colorkey].r
			lightConfig.g = ColorSets[colorkey].g
			lightConfig.b = ColorSets[colorkey].b
			if lightClasses[lightClassKey].lightType == 'point' then 
				lightConfig.color2r = ColorSets[colorkey].color2r or lightConfig.color2r 
				lightConfig.color2g = ColorSets[colorkey].color2g or lightConfig.color2g 
				lightConfig.color2b = ColorSets[colorkey].color2b or lightConfig.color2b 
				lightConfig.colortime = ColorSets[colorkey].colortime or lightConfig.colortime
			end
		end
		if lifetimekey then 
			lightClasses[lightClassKey].lightConfig.lifetime = Lifetimes[lifetimekey]
			lightClasses[lightClassKey].lightConfig.sustain = Lifetimes[lifetimekey] / 4
			lightClasses[lightClassKey].lightConfig.colortime = Lifetimes[lifetimekey] / 5
		end		
	end
	return lightClasses[lightClassKey]
end

--------------------------------------------------------------------------------

local gibLight = {
	lightType = 'point', -- or cone or beam
	pieceName = nil, -- optional
	lightConfig = {
		posx = 0, posy = 0, posz = 0, radius = 75, 
		r = 1, g = 1, b = 0.5, a = 0.25, 
		color2r = 0.8, color2g = 0.7, color2b = 0.3, colortime = 0.1, -- point lights only, colortime in seconds for unit-attache
		modelfactor = 1, specular = 1, scattering = 0.3, lensflare = 1, 
		lifetime = 0, sustain = 100, 	aninmtype = 0 -- unused
	},
}

--------------------------------------------------------------------------------

local muzzleFlashLights = {}
local explosionLights = {}
local projectileDefLights  = {
	['default'] = {
		lightType = 'point',
		lightConfig = { posx = 0, posy = 16, posz = 0, radius = 420,
			color2r = 1, color2g = 1, color2b = 1, colortime = 15,
			r = -1, g = 1, b = 1, a = 1,
			modelfactor = 0.2, specular = 1, scattering = 1, lensflare = 1,
			lifetime = 50, sustain = 20, animtype = 0},
	}
}

-----------------------------------

local function AssignLightsToAllWeapons()
	for weaponID=1, #WeaponDefs do
		local weaponDef = WeaponDefs[weaponID] 
		local customParams = weaponDef.customParams or {}
		local damage = 100
		for cat=0, #weaponDef.damages do
			if Game.armorTypes[cat] and Game.armorTypes[cat] == 'default' then
				damage = weaponDef.damages[cat]
				break
			end
		end
		local radius = ((weaponDef.damageAreaOfEffect*2) + (weaponDef.damageAreaOfEffect * weaponDef.edgeEffectiveness * 1.25)) 
		local orgMult = (math.max(0.25, math.min(damage/1600, 0.6)) + (radius/2800)) 
		local life = (9.5*(1.0+radius/2500)+(orgMult * 5)) 
		radius = (orgMult * 75) + (radius * 2.4)
		local r, g, b = 1, 0.8, 0.45
		if weaponDef.visuals ~= nil and weaponDef.visuals.colorR ~= nil then
			r = weaponDef.visuals.colorR
			g = weaponDef.visuals.colorG
			b = weaponDef.visuals.colorB
		end
		local muzzleFlash = true
		local explosionLight = true
		local sizeclass = 'Tiny'
		
		if weaponDef.type == 'BeamLaser' then 
			muzzleFlash = false
			explosionLight = false
			local beamcolor = 'White'
			if r > g + b then beamcolor = 'Red'
			elseif g > r + b then beamcolor = 'Green'
			elseif b > r + g then beamcolor = 'Blue'
			elseif b < (r + g)/2 then beamcolor = 'Yellow'
			end
 

			for newsize, sizerad in pairs(SizeRadius) do 
				--Spring.Echo(weaponID, damage, sizeclass, sizerad, newsize)
				if damage > sizerad and SizeRadius[sizeclass] < sizerad then sizeclass = newsize end
			end
			projectileDefLights[weaponID] = GetLightClass("LaserProjectile", beamcolor, sizeclass)
		elseif weaponDef.type == 'LightningCannon' then 
			if damage > 500 then sizeclass = 'Medium' end 
			projectileDefLights[weaponID] = GetLightClass("LaserProjectile", "Cold", sizeclass)
		elseif weaponDef.type == 'MissileLauncher' or weaponDef.type == 'StarburstLauncher' then 
			for newsize, sizerad in pairs(SizeRadius) do 
				if damage > sizerad and SizeRadius[sizeclass] > sizerad then sizeclass = newsize end
			end
			projectileDefLights[weaponID] = GetLightClass("MissileProjectile", "Cold", sizeclass)
		elseif weaponDef.type == 'Cannon' then 
			for newsize, sizerad in pairs(SizeRadius) do 
				if damage > sizerad and SizeRadius[sizeclass] > sizerad then sizeclass = newsize end
			end
			projectileDefLights[weaponID] = GetLightClass("CannonProjectile", "Warm", sizeclass)
		elseif weaponDef.type == 'DGun' then 
			sizeclass = "Medium"
			projectileDefLights[weaponID] = GetLightClass("CannonProjectile", "Warm", sizeclass)
		elseif weaponDef.type == 'LaserCannon' then 
			sizeclass = "Medium"
			projectileDefLights[weaponID] = GetLightClass("CannonProjectile", "Warm", sizeclass)
			sizeclass = "Medium"
		elseif weaponDef.type == 'TorpedoLauncher' then 
			sizeclass = "Medium"
			projectileDefLights[weaponID] = GetLightClass("TorpedoProjectile", "Cold", sizeclass)
		elseif weaponDef.type == 'Shield' then 
			sizeclass = "Medium"
			projectileDefLights[weaponID] = GetLightClass("CannonProjectile", "Cold", sizeclass)
		elseif weaponDef.type == 'Flame' then 
			sizeclass = "Small"
			projectileDefLights[weaponID] = GetLightClass("FlameProjectile", "Warm", sizeclass)
		end 
		
		
		if muzzleFlash then 
			muzzleFlashLights[weaponID] = GetLightClass("MuzzleFlash", "White", sizeclass, "Moderate")
		end
		if explosionLight then 
			muzzleFlashLights[weaponID] = GetLightClass("MuzzleFlash", "White", sizeclass, "Moderate")
			muzzleFlashLights[weaponID].yOffset = muzzleFlashLights[weaponID].lightConfig.radius / 10
		end
	end
	Spring.Echo("DLGL4 weapons conf using",usedclasses,"light types")
end
AssignLightsToAllWeapons()

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Projectile Collection
return {muzzleFlashLights = muzzleFlashLights, projectileDefLights = projectileDefLights, explosionLights = explosionLights, gibLight = gibLight}