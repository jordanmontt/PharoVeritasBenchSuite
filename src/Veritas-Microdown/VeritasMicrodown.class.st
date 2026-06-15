Class {
	#name : 'VeritasMicrodown',
	#superclass : 'VeritasBenchSuite',
	#classInstVars : [
		'MainInputFilePath'
	],
	#category : 'Veritas-Microdown',
	#package : 'Veritas-Microdown'
}

{ #category : 'accessing' }
VeritasMicrodown class >> applicationPackages [

	^ self getMicrodownPackages
]

{ #category : 'accessing' }
VeritasMicrodown class >> getMicrodownPackages [

    | packages repo |
    packages := { }.
    repo := IceRepository registry
        detect: [ :each | each name includesSubstring: 'Microdown' caseSensitive: false ].
    packages := packages , (repo workingCopy loadedPackages collect: #packageName as: Array) .

    packages := packages reject: [ :pckName | pckName includesSubstring: 'Test' caseSensitive: false ].
    packages := packages reject: [ :pckName | pckName includesSubstring: 'Baseline' caseSensitive: false ].

    ^ packages collect: [ :pckName | PackageOrganizer default packageNamed: pckName ]
]

{ #category : 'api' }
VeritasMicrodown class >> mainInputFilePath [

	^ MainInputFilePath ifNil: [
		  MainInputFilePath := FileLocator imageDirectory / 'Spec2Book/index.md' ]
]

{ #category : 'api' }
VeritasMicrodown class >> mainInputFilePath: aString [
	"Download the Spec book files form here: https://github.com/SquareBracketAssociates/BuildingApplicationWithSpec2/ "

	MainInputFilePath := aString
]

{ #category : 'api' }
VeritasMicrodown >> run [

	| ast visitor |
	ast := Microdown parseFile: self class mainInputFilePath asFileReference.
	visitor := MicSBALaTeXWriter new.
	visitor includeFilesAndVisit: ast.
	^ visitor contents
]
