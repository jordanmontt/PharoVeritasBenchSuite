Extension { #name : 'PCBenchmarker' }

{ #category : '*Veritas-Bloc' }
PCBenchmarker >> runVeritas [

	[
	self openWindow.
	case duration wait ] ensure: [ self closeWindow ]
]
