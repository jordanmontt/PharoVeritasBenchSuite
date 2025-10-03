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

    ^ #( #'Moose-Configuration' #'MooseIDE-Duplication' #'MooseIDE-Core-Reporter'
         #'Famix-Smalltalk-Utils' #'Famix-CriticBrowser-Generator' #'MooseIDE-Meta' #'MooseIDE-Core'
         #'Famix-MetamodelBuilder-Core' #'MooseIDE-QueriesBrowser' #'MooseIDE-Dependency'
         #'Famix-Tagging-Code' #'MooseIDE-Export' #'MooseIDE-CoUsageMap' #'MooseIDE-ButterflyMap'
         #'Famix-Visualizations' #'Famix-Visitor-Generation' #'Moose-Core-Generator'
         #'Famix-Deprecated' #'MooseIDE-WelcomeBrowser' #'Famix-CriticBrowser-ManualEntities'
         #'FamixReplication-Smalltalk' #'MooseIDE-Spotter' #'Famix-Java-Generator'
         #'Moose-Blueprint-Models' #'AI-MooseLinearAlgebra' #'Famix-UMLDocumentor' #FamixReplication
         #'MooseIDE-NewTools' #'Moose-Query' #'MooseIDE-ClassBlueprint' #'Famix-Java-Fusionner'
         #'Moose-Query-Extensions' #'Moose-Blueprint-Invocations-Models'
         #'MooseIDE-LayerVisualization' #'Moose-SmalltalkImporter' #'MooseIDE-Famix' #'Famix-Java-Entities'
         #'MooseIDE-Tagging' #'MooseIDE-Visualization' #'MooseIDE-QueriesDashboard'
         #'Famix-Traits' #'Famix-BasicInfrastructure' #'Moose-Core' #'FamixReplication-CPP'
         #'Famix-PharoSmalltalk-Entities' #'Famix-PharoSmalltalk-Generator'
         #'Veritas-Moose' #'Famix-Tagging' #'Moose-Blueprint-Visualization-Models'
         #'Famix-Queries' #'MooseIDE-AttributedText' #'Moose-Importers' #'MooseIDE-Analysis'
         #'Famix-CriticBrowser-Entities' #'MooseIDE-CriticBrowser' #'Famix-MetamodelGeneration' )
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
