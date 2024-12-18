return {
	cormine2 = {
		blocking = false,
		buildpic = "CORMINE2.DDS",
		buildtime = 300,
		canattack = false,
		canguard = false,
		canpatrol = false,
		canrepeat = false,
		cloakcost = 2,
		collide = false,
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "15 10 15",
		collisionvolumetype = "cyly",
		energycost = 1050,
		explodeas = "MINE_MEDIUM",
		firestate = 2,
		footprintx = 1,
		footprintz = 1,
		health = 11,
		idleautoheal = 10,
		idletime = 300,
		initcloaked = true,
		levelground = false,
		maxacc = 0,
		maxdec = 0,
		maxslope = 40,
		maxwaterdepth = 0,
		metalcost = 25,
		mincloakdistance = 8,
		nochasecategory = "VTOL",
		objectname = "Units/CORMINE2.s3o",
		script = "mines_lus.lua",
		seismicsignature = 0,
		selfdestructas = "MINE_MEDIUM",
		selfdestructcountdown = 0,
		sightdistance = 83.2,
		stealth = true,
		customparams = {
			detonaterange = "64",
			instantselfd = true,
			mine = true,
			model_author = "Tristan",
			normaltex = "unittextures/cor_normal.dds",
			removestop = true,
			removewait = true,
			subfolder = "CorBuildings/LandUtil",
			unitgroup = "explo",
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
				[1] = "servsml6",
			},
			select = {
				[1] = "minesel2",
			},
		},
		weapondefs = {
			minerange = {
				areaofeffect = 0,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				explosiongenerator = "",
				firesubmersed = false,
				impulsefactor = 0,
				name = "Crawlingbomb Dummy Weapon",
				range = 64,
				reloadtime = 1,
				soundhitwet = "",
				soundhitwetvolume = 0,
				tolerance = 1000000,
				weapontype = "Melee",
				weaponvelocity = 100000,
				customparams = {
					bogus = 1,
				},
				damage = {
					default = 0,
				},
			},
		},
		weapons = {
			[1] = {
				def = "MINERANGE",
			},
		},
	},
}
