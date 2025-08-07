Class {
	#name : 'VeritasMoose',
	#superclass : 'Object',
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

	^ #( #'MooseIDE-Visualization' #'Moose-TestResources-KGB-P14FullReferee' #'Moose-SmalltalkImporter'
	     #'Moose-Blueprint-Invocations-Models' #'Moose-TestResources-KGB-P7ReferencerReferee'
	     #'MooseIDE-Duplication' #'MooseIDE-CriticBrowser' #'MooseIDE-Spotter' #'Moose-TestResources-PackageBlueprint-P2'
	     #'MooseIDE-AttributedText' #'Moose-TestResources-KGB-PExtensions' #'MooseIDE-QueriesBrowser'
	     #'MooseIDE-Core-Reporter' #'Moose-TestResources-Reference-Core' #'Moose-TestResources-KGB-P13FullReferencer'
	     #'Moose-TestResources-PackageBlueprint-P4' #'MooseIDE-ButterflyMap' #'Moose-Query' #'Moose-Core' #'Moose-TestResources-LCOM'
	     #'Moose-Query-Extensions' #'Moose-TestResources-LAN' #'Moose-Blueprint-Models' #'Moose-TestResources-KGB-P1FullReferencer'
	     #'Moose-TestResources-KGB-P5FullReferee' #'MooseIDE-Meta' #'Moose-TestResources-Reference-External'
	     #'Moose-Core-Generator' #'Moose-Configuration' #'Moose-Blueprint-Visualization-Models'
	     #'MooseIDE-Core' #'Moose-TestResources-Reference-PackageTwo' #'Moose-TestResources-KGB-P6InteractedReferee'
	     #'Moose-TestResources-Reference-PackageOne' #'Moose-Query-Test' #'Moose-WelcomeBrowser' #'Moose-TestResources-KGB-P8FullReferencer'
	     #'Moose-TestResources-PackageBlueprint-P1' #'Moose-TestResources-KGB-P2InteractedReferencerReferee'
	     #'MooseIDE-QueriesDashboard' #'MooseIDE-NewTools' #'MooseIDE-Export' #'MooseIDE-Famix' #'Moose-TestResources-KGB-P9FullReferencer'
	     #'Moose-TestResources-KGB-P4FullInteracted' #'Moose-TestResources-KGB-P11FullReferee'
	     #'MooseIDE-Tagging' #'MooseIDE-CoUsageMap' #'MooseIDE-LayerVisualization' #'MooseIDE-Colors' #'MooseIDE-ClassBlueprint'
	     #'Moose-TestResources-PackageBlueprint-P3' #'Moose-TestResources-KGB-P3InteractedReferencer'
	     #'MooseIDE-Analysis' #'MooseIDE-Dependency' #'Moose-Importers' #'Moose-TestResources-KGB-P10InteractedReferee'
	     #'Moose-TestResources-KGB-P12FullReferencer' )
	  , #( #'Famix-PharoSmalltalk-Entities' #'Famix-Test4-Entities' #'Famix-TestComposedMetamodel-Entities'
		     #'FamixReplication-CPP' #'Famix-TestComposedSubmetamodel1-Entities' #'Famix-Queries' #'Famix-Tagging'
		     #'Famix-PharoSmalltalk-Generator' #'Famix-MetamodelBuilder-Core' #'Famix-Tagging-Code' #'Famix-TestComposedSubmetamodel2-Entities'
		     #'FamixReplication-Smalltalk' #'Famix-Test8-Entities' #'Famix-Java-Visitor' #'Famix-Test2-Entities'
		     #'Famix-BasicInfrastructure' #'Famix-Smalltalk-Utils' #'FamixDocumentor-TestMetaModel'
		     #'Famix-TestComposedMetamodel' #'Famix-TestComposed3Metamodel-Entities' #'Famix-Visualizations'
		     #'Famix-CriticBrowser-Generator' #'Famix-CriticBrowser-ManualEntities' #'Famix-Test1-Entities'
		     #'Famix-Traits' #'Famix-Test3-Entities' #'Famix-Java-Entities' #'Famix-TestGenerators' #'Famix-MetamodelGeneration'
		     #'Famix-Test5-Entities' #'MooseIDE-Famix' #'Famix-CriticBrowser-Entities' #FamixTestGenerator #'Famix-Test6-Entities'
		     #'Famix-Test7-Entities' #'Famix-UMLDocumentor' #'Famix-Java-Generator' #FamixReplication #'Famix-TestComposedComposedMetamodel-Entities'
		     #'Famix-Deprecated' )
	  , #( #'Fame-Example' #'Fame-Rules' #'Fame-Spec2' #'Fame-Core' #'Fame-Deprecated' #'Fame-ImportExport' )
]

{ #category : 'running' }
VeritasMoose >> run [

	| model inputFile |
	model := FamixJavaModel new.
	inputFile := (FileLocator imageDirectory / 'omaje2.json') asFileReference.
	^ model importFromJSONStream: inputFile readStream filteredBy: FamixJavaImportingContext new importMaximum.
	"Open Architectural Map. The received entity must be a Moose object.
	If it is a collection, you can convert it using #asMooseGroup.
	Example: model entities asMooseGroup".
	"MiArchitecturalMapBrowser open receiveEntity: model allModelClasses"
]
