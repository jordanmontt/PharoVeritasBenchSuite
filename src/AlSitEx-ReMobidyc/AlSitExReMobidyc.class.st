Class {
	#name : 'AlSitExReMobidyc',
	#superclass : 'Object',
	#category : 'AlSitEx-ReMobidyc',
	#package : 'AlSitEx-ReMobidyc'
}

{ #category : 'running' }
AlSitExReMobidyc >> run [

	| model metainterpreter semaphore |
	semaphore := Semaphore new.
	model := RMDSimulationModel goatAndWolf.
	model variability
		multiplicity: 4;
		randomSeed: 1.
	metainterpreter := RMDMetaInterpreter forDryRunOn: model.
	metainterpreter announcer when: RMDSimulationPaused do: [ semaphore signal ] for: self.
	metainterpreter openInExperimentarium presenter runSimulation.
	semaphore wait
]
