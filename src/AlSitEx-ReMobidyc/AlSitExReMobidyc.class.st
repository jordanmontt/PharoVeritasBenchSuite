Class {
	#name : 'AlSitExReMobidyc',
	#superclass : 'Object',
	#category : 'AlSitEx-ReMobidyc',
	#package : 'AlSitEx-ReMobidyc'
}

{ #category : 'as yet unclassified' }
AlSitExReMobidyc class >> applicationPackages [

	^ #( #'ReMobidyc-Storage' #'ReMobidyc-DataSource' #'ReMobidyc-Units-Tests' #'ReMobidyc-Language-Tests'
	     #'ReMobidyc-Spec2' #'ReMobidyc-Interpreter-Tests' #'ReMobidyc-Storage-Tests' #'ReMobidyc-Language'
	     #'ReMobidyc-Visualization' #'ReMobidyc-Visualization-Tests' #'ReMobidyc-Units' #'ReMobidyc-Interpreter'
	     #'ReMobidyc-Repository' ) collect: #asPackage
]

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
