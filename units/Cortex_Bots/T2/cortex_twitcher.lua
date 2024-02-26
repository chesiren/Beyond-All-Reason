return {
	cortex_twitcher = {
		maxacc = 0.23,
		maxdec = 1.725,
		energycost = 3800,
		metalcost = 210,
		builddistance = 136,
		builder = true,
		buildpic = "cortex_twitcher.DDS",
		buildtime = 6500,
		canmove = true,
		category = "BOT MOBILE ALL NOTSUB NOWEAPON NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "22 47 19",
		collisionvolumetype = "Box",
		corpse = "DEAD",
		energymake = 15,
		energystorage = 100,
		explodeas = "smallbuilder",
		footprintx = 2,
		footprintz = 2,
		idleautoheal = 5,
		idletime = 1800,
		health = 830,
		maxslope = 17,
		speed = 90.0,
		maxwaterdepth = 22,
		movementclass = "BOT3",
		objectname = "Units/cortex_twitcher.s3o",
		script = "Units/cortex_twitcher.cob",
		seismicsignature = 0,
		selfdestructas = "smallbuilderSelfd",
		sightdistance = 520,
		terraformspeed = 750,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 1.98,
		turnrate = 1391.5,
		upright = true,
		workertime = 125,
		buildoptions = {
			[1] = "cortex_solarcollector",
			[2] = "cortex_metalextractor",
			[3] = "cortex_botlab",
			[4] = "cortex_constructionturret",
			[5] = "cortex_beholder",
			[6] = "cortex_shroud",
			[7] = "cortex_fortificationwall",
			[8] = "cortex_advancedradartower",
			[9] = "cortex_mediummine",
			[10] = "cortex_jellyfish",
			[11] = "cortex_twinguard",
			[12] = "cortex_persecutor",
			[13] = "cortex_sam",
			[14] = "corflak",
			[15] = "cortex_constructionbot",
			[16] = "cortex_grunt",
			[17] = "cortex_trasher",
			[18] = "cortex_commando",
			[19] = "cortex_fiend",
			[20] = "cortex_duck",
			[21] = "corcs",
			[22] = "corroy",
			[23] = "cortex_termite",
		},
		customparams = {
			unitgroup = 'buildert2',
			area_mex_def = "cortex_metalextractor",
			model_author = "Beherith",
			normaltex = "unittextures/cor_normal.dds",
			subfolder = "cortex_bots/t2",
			techlevel = 2,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "2.70434570313 -0.526537158203 -1.280418396",
				collisionvolumescales = "37.4086914063 20.6713256836 39.1832122803",
				collisionvolumetype = "Box",
				damage = 600,
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 20,
				hitdensity = 100,
				metal = 125,
				object = "Units/cortex_twitcher_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "35.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 500,
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 50,
				object = "Units/cor2X2D.s3o",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = {
			pieceexplosiongenerators = {
				[1] = "deathceg2-builder",
				[2] = "deathceg3-builder",
				[3] = "deathceg4-builder",
			},
		},
		sounds = {
			build = "nanlath2",
			canceldestruct = "cancel2",
			capture = "capture2",
			repair = "repair2",
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
				[1] = "kbcormov",
			},
			select = {
				[1] = "kbcorsel",
			},
		},
	},
}
