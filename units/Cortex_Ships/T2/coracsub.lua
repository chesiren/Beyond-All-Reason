return {
	coracsub = {
		maxacc = 0.042,
		maxdec = 0.042,
		energycost = 9000,
		metalcost = 700,
		builddistance = 180,
		builder = true,
		buildpic = "CORACSUB.DDS",
		buildtime = 18000,
		canmove = true,
		category = "ALL UNDERWATER MOBILE NOTLAND NOWEAPON NOTAIR NOTHOVER",
		collisionvolumeoffsets = "0 0 4",
		collisionvolumescales = "38 9 72",
		collisionvolumetype = "box",
		corpse = "DEAD",
		energymake = 30,
		energystorage = 150,
		explodeas = "mediumexplosiongeneric-uw",
		footprintx = 4,
		footprintz = 4,
		idleautoheal = 5,
		idletime = 1800,
		health = 1110, --445,
		speed = 64.8,
		minwaterdepth = 20,
		movementclass = "UBOAT4",
		objectname = "Units/CORACSUB.s3o",
		radardistance = 50,
		script = "Units/CORACSUB.cob",
		seismicsignature = 0,
		selfdestructas = "mediumexplosiongenericSelfd-uw",
		sightdistance = 156,
		terraformspeed = 1500,
		turninplace = true,
		turninplaceanglelimit = 90,
		turnrate = 385.5,
		waterline = 80,
		workertime = 300,
		buildoptions = {
			[1] = "cortex_navalfusionreactor",
			[2] = "cortex_navaladvancedenergyconverter",
			[3] = "cortex_navaladvancedmetalextractor",
			[4] = "cortex_hardenedenergystorage",
			[5] = "cortex_hardenedmetalstorage",
			[6] = "cortex_underwaterexperimentalgantry",
			[7] = "cortex_advancedshipyard",
			[8] = "cortex_shipyard",
			[9] = "cortex_advancedsonarstation",
			[10] = "cortex_navalpinpointer",
			[11] = "cortex_lamprey",
			[12] = "cortex_navalbirdshot",
			[13]= "cortex_devastator",
			[14]= "cortex_advancednavalgeothermalpowerplant",
			[15] = "cortex_floatingairrepairpad",
		},
		customparams = {
			unitgroup = 'buildert2',
			area_mex_def = "cortex_navaladvancedmetalextractor",
			model_author = "Beherith",
			normaltex = "unittextures/cor_normal.dds",
			subfolder = "cortex_ships/t2",
			techlevel = 2,
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "0.0 -1.62156426758 -7.49900054932",
				collisionvolumescales = "45.8502807617 11.0077514648 73.3929595947",
				collisionvolumetype = "Box",
				damage = 444,
				energy = 0,
				featuredead = "HEAP",
				footprintx = 4,
				footprintz = 4,
				height = 20,
				hitdensity = 100,
				metal = 350,
				object = "Units/coracsub_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "85.0 14.0 6.0",
				collisionvolumetype = "cylY",
				damage = 1432,
				energy = 0,
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 175,
				object = "Units/cor4X4C.s3o",
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
			build = "nanlath1",
			canceldestruct = "cancel2",
			capture = "capture1",
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
				[1] = "sucormov",
			},
			select = {
				[1] = "sucorsel",
			},
		},
	},
}
