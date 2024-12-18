return {
	armmerl = {
		buildpic = "ARMMERL.DDS",
		buildtime = 15500,
		canmove = true,
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "46 30 54",
		collisionvolumetype = "Box",
		corpse = "DEAD",
		energycost = 6500,
		explodeas = "largexplosiongeneric",
		footprintx = 3,
		footprintz = 3,
		health = 1220,
		idleautoheal = 5,
		idletime = 1800,
		leavetracks = true,
		maxacc = 0.02489,
		maxdec = 0.04978,
		maxslope = 16,
		maxwaterdepth = 12,
		metalcost = 920,
		movementclass = "HTANK4",
		movestate = 0,
		nochasecategory = "MOBILE VTOL",
		objectname = "Units/ARMMERL.s3o",
		script = "Units/ARMMERL.cob",
		seismicsignature = 0,
		selfdestructas = "largeExplosionGenericSelfd",
		sightdistance = 247,
		speed = 33,
		stealth = true,
		trackoffset = 15,
		trackstrength = 8,
		tracktype = "armcroc_tracks",
		trackwidth = 44,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 0.792,
		turnrate = 520.29999,
		customparams = {
			model_author = "FireStorm",
			normaltex = "unittextures/Arm_normal.dds",
			subfolder = "ArmVehicles/T2",
			techlevel = 2,
			unitgroup = "weapon",
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0 0 0",
				collisionvolumescales = "46 30 54",
				collisionvolumetype = "Box",
				damage = 1812,
				featuredead = "HEAP",
				footprintx = 3,
				footprintz = 3,
				height = 20,
				metal = 560,
				object = "Units/armmerl_dead.s3o",
				reclaimable = true,
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "55.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 906,
				footprintx = 3,
				footprintz = 3,
				height = 4,
				metal = 224,
				object = "Units/arm3X3F.s3o",
				reclaimable = true,
				resurrectable = 0,
			},
		},
		sfxtypes = {
			pieceexplosiongenerators = {
				[1] = "deathceg2",
				[2] = "deathceg3",
				[3] = "deathceg4",
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
				[1] = "varmmove",
			},
			select = {
				[1] = "varmsel",
			},
		},
		weapondefs = {
			armtruck_rocket = {
				areaofeffect = 150,
				avoidfeature = false,
				castshadow = true,
				cegtag = "missiletrailmedium-starburst",
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.65,
				explosiongenerator = "custom:genericshellexplosion-large-bomb",
				firestarter = 100,
				flighttime = 10,
				impulsefactor = 0.8,
				metalpershot = 0,
				model = "corshiprocket.s3o",
				name = "Heavy long-range g2g high-trajectory starburst rocket launcher",
				noselfdamage = true,
				range = 1300,
				reloadtime = 18,
				smokecolor = 0.7,
				smokeperiod = 9,
				smokesize = 16,
				smoketime = 45,
				smoketrail = true,
				smoketrailcastshadow = false,
				soundhit = "xplomed4",
				soundhitwet = "splslrg",
				soundstart = "Rockhvy1",
				texture1 = "null",
				texture2 = "smoketrailbar",
				texture3 = "null",
				tolerance = 4000,
				turnrate = 15000,
				weaponacceleration = 100,
				weapontimer = 3,
				weapontype = "StarburstLauncher",
				weaponvelocity = 380,
				damage = {
					commanders = 625,
					default = 1900,
					subs = 500,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "MOBILE",
				def = "ARMTRUCK_ROCKET",
				onlytargetcategory = "SURFACE",
			},
		},
	},
}
