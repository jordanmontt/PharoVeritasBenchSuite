Class {
	#name : 'VeritasMoose',
	#superclass : 'VeritasBenchSuite',
	#classVars : [
		'ApplicationPackages'
	],
	#category : 'Veritas-Moose-Objects',
	#package : 'Veritas-Moose',
	#tag : 'Objects'
}

{ #category : 'as yet unclassified' }
VeritasMoose class >> applicationPackages [

	^ ApplicationPackages
]

{ #category : 'as yet unclassified' }
VeritasMoose class >> getMoosePackages [

    | packages repoNames |
    packages := { }.
    repoNames := { 'Fame' . 'Famix' . 'FamixQueries' . 'FamixReplication' . 'FamixTagging' . 'Moose' . 'MooseIDE' }.
    repoNames do: [ :repoName | 
        | repo | 
        repo := IceRepository registry detect: [ :each | each name includesSubstring: repoName caseSensitive: false ].
        packages := packages , (repo workingCopy loadedPackages collect: #packageName as: Array) ].

    packages := packages reject: [ :pckName | pckName includesSubstring: 'Test' caseSensitive: false ].
    packages := packages reject: [ :pckName | pckName includesSubstring: 'Baseline' caseSensitive: false ].
    ^ packages collect: [ :pckName | PackageOrganizer default packageNamed: pckName ]
]

{ #category : 'class initialization' }
VeritasMoose class >> initialize [

    ApplicationPackages := self getMoosePackages
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
