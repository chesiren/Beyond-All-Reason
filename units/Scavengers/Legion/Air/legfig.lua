return {
	legfig = {
		acceleration = 0.35,
		airsightdistance = 950,
		blocking = false,
		brakerate = 0.075,
		buildcostenergy = 1600,
		buildcostmetal = 40,
		buildpic = "LEGFIG.DDS",
		buildtime = 2000,
		canfly = true,
		canmove = true,
		category = "ALL MOBILE WEAPON NOTSUB NOTLAND VTOL NOTSHIP NOTHOVER",
		collide = false,
		cruisealt = 125,
		explodeas = "smallExplosionGenericAir",
		footprintx = 2,
		footprintz = 2,
		icontype = "air",
		maxacc = 0.2,
		maxaileron = 0.0144,
		maxbank = 0.8,
		maxdamage = 200,
		maxelevator = 0.01065,
		maxpitch = 0.625,
		maxrudder = 0.00615,
		maxslope = 10,
		maxvelocity = 9,
		maxwaterdepth = 0,
		nochasecategory = "NOTAIR",
		objectname = "Units/scavboss/LEGFIG.s3o",
		script = "Units/scavboss/LEGFIG.cob",
		seismicsignature = 0,
		selfdestructas = "smallExplosionGenericAir",
		sightdistance = 210,
		speedtofront = 0.06417,
		turnradius = 48,
		turnrate = 950,
		usesmoothmesh = true,
		wingangle = 0.06315,
		wingdrag = 0.185,
		customparams = {
			unitgroup = 'aa',
			model_author = "FireStorm",
			normaltex = "unittextures/Arm_normal.dds",
			subfolder = "armaircraft",
			fighter = 1,
		},
		sfxtypes = {
			crashexplosiongenerators = {
				[1] = "crashing-tiny",
				[2] = "crashing-tiny2",
			},
			pieceexplosiongenerators = {
				[1] = "airdeathceg2",
				[2] = "airdeathceg3",
			},
		},
		sounds = {
			canceldestruct = "cancel2",
			underattack = "warning1",
			cant = {
				[1] = "cantdo4",
			},
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			ok = {
				[1] = "vtolarmv",
			},
			select = {
				[1] = "vtolarac",
			},
		},
		weapondefs = {
			semiauto = {
				accuracy = 7,
				areaofeffect = 16,
				avoidfeature = false,
				avoidfriendly = false,
				burst = 2,
				burstrate = 0.1,
				burnblow = false,
				collideFriendly = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				duration = 0.02,
				edgeeffectiveness = 0.85,
				explosiongenerator = "custom:plasmahit-sparkonly",
				fallOffRate = 0.2,
				firestarter = 0,
				impulseboost = 0.4,
				impulsefactor = 1.5,
				intensity = 0.8,
				name = "Rapid-fire a2g machine guns",
				noselfdamage = true,
				ownerExpAccWeight = 4.0,
				predictboost = 0.5,
				proximitypriority = 3,
				range = 600,
				reloadtime = 0.6,
				rgbcolor = "1 0.4 0.95",
				--size = 2.25,
				soundhit = "bimpact3",
				soundhitwet = "splshbig",
				soundstart = "minigun3",
				soundstartvolume = 3,
				sprayangle = 500,
				thickness = 0.6,
				tolerance = 2400,
				--weapontimer = 1,
				weapontype = "LaserCannon",
				weaponvelocity = 1500,
				customparams = {
					light_color = "1 0.9 0.15",
					light_radius_mult = 0.5,
					light_mult = 1.7,
					expl_light_life_mult = 0.1,
					expl_light_radius_mult = 0.01,
					expl_light_mult = 0.01,
					expl_light_color = "0.45 0.40 0.35",
				},
				damage = {
					bombers = 54,
					commanders = 1,
					default = 2,
					fighters = 54,
					vtol = 36,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "NOTAIR",
				def = "SEMIAUTO",
				onlytargetcategory = "VTOL",
			},
		},
	},
}
