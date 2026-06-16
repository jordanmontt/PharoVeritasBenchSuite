Class {
	#name : 'VeritasBlocHost',
	#superclass : 'BlHeadlessHost',
	#classInstVars : [
		'myLoop'
	],
	#category : 'Veritas-Bloc',
	#package : 'Veritas-Bloc'
}

{ #category : 'api - lifecycle' }
VeritasBlocHost class >> isRunning [

	^ myLoop isNotNil and: [myLoop isRunning]
]

{ #category : 'printing' }
VeritasBlocHost class >> label [

	^ 'VeritasBlocHost'
]

{ #category : 'api - lifecycle' }
VeritasBlocHost class >> start [
	myLoop ifNil: [
			myLoop := BlHostPulseLoop forHost: self.
			myLoop pulsePeriod: (Duration seconds: 0) ].
	myLoop start
]

{ #category : 'api - lifecycle' }
VeritasBlocHost class >> stop [
	
	myLoop ifNil: [ ^ self ].
	myLoop stop.
	myLoop := nil
]

{ #category : 'api - lifecycle' }
VeritasBlocHost class >> uiProcessDo: aBlock [

	myLoop ifNil: [ ^ self ].
	myLoop loopProcess ifNotNil: aBlock.
]

{ #category : 'host - api' }
VeritasBlocHost >> newHostSpaceFor: aSpace [

	^ VeritasBlocHostSpace new
		  host: self;
		  universe: self universe;
		  space: aSpace;
		  renderer: self newHostRenderer;
		  yourself
]
