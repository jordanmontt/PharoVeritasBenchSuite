Class {
	#name : 'AlSitExMoose',
	#superclass : 'Object',
	#category : 'AlSitEx-Moose-Objects',
	#package : 'AlSitEx-Moose',
	#tag : 'Objects'
}

{ #category : 'running' }
AlSitExMoose >> run [

	| model inputFile |
	model := FamixJavaModel new.
	inputFile := (FileLocator imageDirectory / 'omaje2.json') asFileReference.
	^ model importFromJSONStream: inputFile readStream filteredBy: FamixJavaImportingContext new importMaximum "Open Architectural Map. The received entity must be a Moose object.
If it is a collection, you can convert it using #asMooseGroup.
Example: model entities asMooseGroup".
	"MiArchitecturalMapBrowser open receiveEntity: model allModelClasses"
]
