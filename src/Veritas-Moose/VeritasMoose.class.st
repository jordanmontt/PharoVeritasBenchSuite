Class {
	#name : 'VeritasMoose',
	#superclass : 'VeritasBenchSuite',
	#category : 'Veritas-Moose-Objects',
	#package : 'Veritas-Moose',
	#tag : 'Objects'
}

{ #category : 'as yet unclassified' }
VeritasMoose class >> applicationPackages [

	^ self packageNames collect: #asPackage
]

{ #category : 'as yet unclassified' }
VeritasMoose class >> packageNames [

	^  #(#'Famix-MetamodelGeneration' #'MooseIDE-ButterflyMap' #'Moose-Query-Extensions' #'MooseIDE-LayerVisualization' #'MooseIDE-Export' #'MooseIDE-Analysis' #'Famix-CriticBrowser-Entities' #'Famix-Java-Generator' #'Moose-Query' #'Famix-PharoSmalltalk-Entities' #'Moose-SmalltalkImporter' #'MooseIDE-Dependency' #'Moose-Core-Generator' #'Famix-Smalltalk-Utils' #'FamixReplication-Smalltalk' #'Fame-Rules' #'MooseIDE-AttributedText' #'MooseIDE-Duplication' #'Moose-WelcomeBrowser' #'MooseIDE-Core-Reporter' #'MooseIDE-Visualization' #'AI-MooseLinearAlgebra' #'Moose-Blueprint-Invocations-Models' #'MooseIDE-Tagging' #'Famix-CriticBrowser-Generator' #'Fame-ImportExport' #'Famix-Tagging' #'Famix-PharoSmalltalk-Generator' #'Famix-CriticBrowser-ManualEntities' #'Fame-Inspection' #'Famix-UMLDocumentor' #FamixReplication #'Famix-Traits' #'Moose-Configuration' #'Famix-Java-Fusionner' #'Famix-Visualizations' #'MooseIDE-NewTools' #'Famix-BasicInfrastructure' #'Moose-Blueprint-Visualization-Models' #'Famix-MetamodelBuilder-Core' #'MooseIDE-Spotter' #'MooseIDE-CoUsageMap' #'Famix-Queries' #'Fame-Core' #'Famix-Deprecated' #'Famix-Visitor-Generation' #'FamixReplication-CPP' #'MooseIDE-QueriesDashboard' #'MooseIDE-Meta' #'Moose-Core' #'MooseIDE-Core' #'Fame-Example' #'MooseIDE-Famix' #'Moose-Importers' #'Famix-Java-Entities' #'Fame-Deprecated' #'MooseIDE-CriticBrowser' #'Famix-Tagging-Code' #'MooseIDE-ClassBlueprint' #'MooseIDE-QueriesBrowser' #'Moose-Blueprint-Models')
]

{ #category : 'api' }
VeritasMoose >> mooseModelFile [
   "Model classes:"" 
	self allModelClasses size.  ""230""
	""All classes in the model + external dependencies""
	self allClasses size.  ""1293""

	""Model methods:""
	self allModelMethods size. ""1862""
	""All methods in the model + external dependencies""
	self allMethods size.  ""2942"

	"SBSCL is a bio informatics Java project that can be found here: https://github.com/draeger-lab/SBSCL"
	"The Java code has been parsed the 25 August 2025."
 
	^ (FileLocator imageDirectory / 'sbscl.json') asFileReference
]

{ #category : 'api' }
VeritasMoose >> run [

	| model |
	model := FamixJavaModel new.
	^ model importFromJSONStream: self mooseModelFile readStream filteredBy: FamixJavaImportingContext new importMaximum

	"Open Architectural Map. The received entity must be a Moose object.
	If it is a collection, you can convert it using #asMooseGroup.
	Example: model entities asMooseGroup"
 	"MiArchitecturalMapBrowser open receiveEntity: model allModelClasses"
]
