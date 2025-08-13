Class {
	#name : 'VeritasHoneyGinger',
	#superclass : 'VeritasBenchSuite',
	#instVars : [
		'renderingCycles'
	],
	#category : 'Veritas-HoneyGinger',
	#package : 'Veritas-HoneyGinger'
}

{ #category : 'accessing' }
VeritasHoneyGinger class >> applicationPackages [

	^ #( 'HoneyGinger' ) collect: #asPackage
]

{ #category : 'initialization' }
VeritasHoneyGinger >> initialize [

	renderingCycles := 600
]

{ #category : 'running' }
VeritasHoneyGinger >> renderSimulation: aMorphSimulator [

	renderingCycles timesRepeat: [ WorldMorph doOneCycle ].
	aMorphSimulator window close
]

{ #category : 'running' }
VeritasHoneyGinger >> run [

	"Simulations to use"
	self renderSimulation: HGSimulator butterBallGraffitiAtDie
	"self renderSimulation: HGSimulator ramen."
	"self renderSimulation: HGSimulator butterBall."
	
	"Stop moving eventually"
	"self renderSimulation: HGSimulator rockAtDie."
	"self renderSimulation: HGSimulator jelloAtDie."

	"Morphic world and custom forms"
	"self renderSimulation: HGSimulator stickyBeans"
	"self renderSimulation: HGSimulator impossibeRiverRefraction."

	"Mouse interaction"
	"self renderSimulation: HGSimulator liquidOxgen."
	"self renderSimulation: HGSimulator impossibeRiverPolygon."
	"self renderSimulation: HGSimulator polymer800."
	"self renderSimulation: HGSimulator impossibeRiverBorderline."
	"self renderSimulation: (HGSimulator graffitiInUserImage: 0.5)."
	"self renderSimulation: HGSimulator rockIce."
]
