Extension { #name : 'BlBBlocBenchRunner' }

{ #category : '*Veritas-Bloc' }
BlBBlocBenchRunner >> doRunCaseVeritas: aCase [

	[
		self prepareBeforeRunVeritas: aCase.
		self doRun: aCase.
	] ensure: [ self cleanUpAfterCase: aCase ]
]

{ #category : '*Veritas-Bloc' }
BlBBlocBenchRunner >> prepareBeforeRunVeritas: aBlBCase [
	
	space := BlSpace new
]

{ #category : '*Veritas-Bloc' }
BlBBlocBenchRunner >> runCaseVeritas: aCase [

	[ self doRunCaseVeritas: aCase ] onErrorDo: [ :e | e freeze ]
]
