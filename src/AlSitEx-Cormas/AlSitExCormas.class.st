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
		activeControlSelector: #step:;
		initializeSimulation.
	"simulation runAllStepsAfterEachDo: [
		Transcript
			show: 'Simulation step ';
			show: simulation currentTimeStep asString;
			cr ]."
]
