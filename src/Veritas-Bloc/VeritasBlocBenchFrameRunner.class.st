Class {
	#name : 'VeritasBlocBenchFrameRunner',
	#superclass : 'BlBBlocBenchFrameRunner',
	#instVars : [
		'previousHostClass',
		'hostSpace'
	],
	#category : 'Veritas-Bloc',
	#package : 'Veritas-Bloc'
}

{ #category : 'running' }
VeritasBlocBenchFrameRunner >> cleanUpAfterCase: aCase [

	hostSpace := space hostSpace.

	super cleanUpAfterCase: aCase.
	VeritasBlocHost stop.
	BlParallelUniverse removeForHost: VeritasBlocHost.

	previousHostClass ifNotNil: [ BlHost preferableHostClass: previousHostClass ]
]

{ #category : 'running' }
VeritasBlocBenchFrameRunner >> doRunCaseVeritas: aCase [

	[
		self prepareBeforeRunVeritas: aCase.
		self doRun: aCase.
	] ensure: [ self cleanUpAfterCase: aCase ]
]

{ #category : 'running' }
VeritasBlocBenchFrameRunner >> prepareBeforeRunVeritas: aBlBCase [

	previousHostClass := BlHost preferableHostClass.
	VeritasBlocHost start.
	BlHost preferableHostClass: VeritasBlocHost.
	space := BlSpace new.

]

{ #category : 'running' }
VeritasBlocBenchFrameRunner >> runCaseVeritas: aCase [

	^ [ 
		self doRunCaseVeritas: aCase.
		hostSpace surface
	 ] onErrorDo: [ :e | e freeze ]
]
