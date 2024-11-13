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
		finalTimeStep: 10000;
		activeControlSelector: #step:;
		initializeSimulation;
		yourself.
	simulation runAllSteps.
	^ simulation
	"simulation runAllStepsAfterEachDo: [
		Transcript
			show: 'Simulation step ';
			show: simulation currentTimeStep asString;
			cr ].
	Transcript show: simulation data last; cr"
]
