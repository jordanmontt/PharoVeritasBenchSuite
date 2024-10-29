Class {
	#name : 'AlSitExCormas',
	#superclass : 'Object',
	#category : 'AlSitEx-Cormas',
	#package : 'AlSitEx-Cormas'
}

{ #category : 'as yet unclassified' }
AlSitExCormas >> runEcecModel [

	| simulation |
	simulation := (CMSimulation for: ECECModel)
		activeInitSelector: #homogeneousEnvironment;
		finalTimeStep: 1000;
		activeControlSelector: #step:;
		initializeSimulation.
	simulation runAllSteps.
	^ simulation
]
