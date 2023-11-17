return {
	raptorw2 = {
		acceleration = 2,
		airsightdistance = 1500,
		amphibious = true,
		autoheal = 10,
		bankscale = "1",

		brakerate = 0.2,
		buildcostenergy = 2200,
		buildcostmetal = 72,
		builder = false,
		buildpic = "raptors/raptorw2.DDS",
		buildtime = 1950,
		cancrash = false,
		canfly = true,
		canguard = true,
		canland = true,
		canloopbackattack = true,
		canmove = true,
		canpatrol = true,
		canstop = true,
		cansubmerge = false,
		capturable = false,
		category = "ALL MOBILE WEAPON NOTLAND VTOL NOTSUB NOTSHIP NOTHOVER RAPTOR",
		collide = false,
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "58 58 58",
		collisionvolumetype = "sphere",
		cruisealt = 300,
		defaultmissiontype = "VTOL_standby",
		explodeas = "TALON_DEATH",
		floater = true,
		footprintx = 1,
		footprintz = 1,
		hidedamage = 1,
		maneuverleashlength = "1280",
		mass = 200,
		maxacc = 0.25,
		maxaileron = 0.025,
		maxbank = 0.8,
		maxdamage = 1000,
		maxelevator = 0.025,
		maxpitch = 0.75,
		maxrudder = 0.025,
		maxvelocity = 15,
		moverate1 = "32",
		noautofire = false,
		nochasecategory = "NOTAIR",
		objectname = "Raptors/raptor_crow.s3o",
		script = "Raptors/raptorw2.cob",
		seismicsignature = 0,
		selfdestructas = "TALON_DEATH",
		separation = "0.2",
		side = "THUNDERBIRDS",
		sightdistance = 600,
		smoothanim = true,
		speedtofront = 0.07,
		turninplace = true,
		turnradius = 64,
		turnrate = 1600,
		unitname = "raptorw2",
		usesmoothmesh = true,
		wingangle = 0.06593,
		wingdrag = 0.435,
		workertime = 0,
		customparams = {
			subfolder = "other/raptors",
			model_author = "KDR_11k, Beherith",
			normalmaps = "yes",
			normaltex = "unittextures/chicken_m_normals.png",
			treeshader = "yes",
		},
		sfxtypes = {
			crashexplosiongenerators = {
				[1] = "crashing-small",
				[2] = "crashing-small",
				[3] = "crashing-small2",
				[4] = "crashing-small3",
				[5] = "crashing-small3",
			},
			explosiongenerators = {
				[1] = "custom:blood_spray",
				[2] = "custom:blood_explode",
				[3] = "custom:dirt",
			},
			pieceexplosiongenerators = {
				[1] = "blood_spray",
				[2] = "blood_spray",
				[3] = "blood_spray",
			},
		},
		weapondefs = {
			weapon = {
				areaofeffect = 256,
				avoidfriendly = false,
				burnblow = true,
				--cegtag = "sporetrail-large",
				collidefriendly = false,
				craterboost = 0,
				cratermult = 0,
				cameraShake = 700,
				dance = 20,
				edgeeffectiveness = 0.35,
				explosiongenerator = "custom:genericshellexplosion-huge-bomb",
				firestarter = 0,
				flighttime = 8,
				firesubmersed = true,
				impulseboost = 0,
				impulsefactor = 0.4,
				interceptedbyshieldtype = 4,
				metalpershot = 0,
				model = "SimpleFlareXL.s3o",
				name = "Deadly Defensive Spores",
				noselfdamage = true,
				range = 1500,
				reloadtime = 0.2,
				smoketrail = true,
				smokePeriod = 2,
				smoketime = 45,
				smokesize = 10.5,
				smokecolor = 1.0,
				soundhit = "spore_explo",
				soundstart = "spore_xl",
				soundstartvolume = 9,
				startvelocity = 1000,
				texture1 = "orangenovaexplo",
				texture2 = "sporetrail_xl",
				tolerance = 60000,
				tracks = true,
				turnrate = 60000,
				turret = true,
				waterweapon = true,
				weaponacceleration = 40,
				weapontype = "MissileLauncher",
				weaponvelocity = 2000,
				wobble = 32000,
				damage = {
					default = 1,
					bombers = 500,
					fighters = 500,
					vtol = 500,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "NOTAIR",
				def = "WEAPON",
				maindir = "0 0 1",
				maxangledif = 90,
				onlytargetcategory = "VTOL",
			},
		},
	},
}
