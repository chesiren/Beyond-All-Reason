return {
	armada_voyager = {
		maxacc = 0.04059,
		maxdec = 0.04059,
		energycost = 3200,
		metalcost = 190,
		builddistance = 250,
		builder = true,
		buildpic = "armada_voyager.DDS",
		buildtime = 4720,
		canmove = true,
		category = "ALL NOTSUB SHIP NOWEAPON NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 -7 2",
		collisionvolumescales = "25 25 66",
		collisionvolumetype = "CylZ",
		corpse = "DEAD",
		explodeas = "mediumexplosiongeneric",
		floater = true,
		footprintx = 4,
		footprintz = 4,
		idleautoheal = 5,
		idletime = 1800,
		health = 1460,
		speed = 66.0,
		minwaterdepth = 15,
		movementclass = "BOAT4",
		objectname = "Units/armada_voyager.s3o",
		script = "Units/armada_voyager.cob",
		seismicsignature = 0,
		selfdestructas = "mediumexplosiongenericSelfd",
		sightdistance = 260,
		terraformspeed = 2000,
		turninplace = true,
		turninplaceanglelimit = 90,
		turnrate = 405,
		waterline = 2,
		workertime = 200,
		buildoptions = {
			[1] = "armada_tidalgenerator",
			[2] = "armada_metalextractor",
			[3] = "armada_navalradarsonar",
			[4] = "armada_advancedradartower",
			[5] = "armada_navalconstructionturret",
			[6] = "armada_shipyard",
			[7] = "armada_constructionship",
			[8] = "armada_harpoon",
			[9] = "armada_manta",
			[10] = "armada_navalarbalest",
			[11] = "armada_skater",
			[12] = "armada_dolphin",
			[13] = "armada_corsair",
			[14] = "armada_amphibiousbot",
			[15] = "armada_heavymine",
			[16] = "armada_rattlesnake",
			[17] = "armada_gorgon",
		},
		customparams = {
			unitgroup = 'buildert2',
			area_mex_def = "armada_metalextractor",
			model_author = "FireStorm",
			normaltex = "unittextures/Arm_normal.dds",
			subfolder = "armada_ships/t2",
			techlevel = 2,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0.0 -1.85327148436e-05 2.73946380615",
				collisionvolumescales = "37.140838623 18.7893829346 66.6114349365",
				collisionvolumetype = "Box",
				damage = 1576,
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 4,
				footprintz = 4,
				height = 20,
				hitdensity = 100,
				metal = 95,
				object = "Units/armada_voyager_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "85.0 14.0 6.0",
				collisionvolumetype = "cylY",
				damage = 4032,
				energy = 0,
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 47.5,
				object = "Units/arm4X4A.s3o",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:waterwake-small",
			},
			pieceexplosiongenerators = {
				[1] = "deathceg2",
				[2] = "deathceg3",
				[3] = "deathceg4",
			},
		},
		sounds = {
			build = "nanlath1",
			canceldestruct = "cancel2",
			repair = "repair1",
			underattack = "warning1",
			working = "reclaim1",
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
				[1] = "sharmmov",
			},
			select = {
				[1] = "sharmsel",
			},
		},
	},
}
