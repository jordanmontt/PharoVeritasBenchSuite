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

	^ #( #'Microdown-HTMLExporter' #'Microdown-Transformer'
	     #'Microdown-PrettyPrinter' #'Microdown-BeamerExporter'
	     #'Microdown-RichTextComposer' #'Microdown-BrowserExtensions'
	     #'Microdown-RichTextPresenter' #'Microdown-Blog'
	     #Microdown #'Microdown-Evaluator' #'Spec2-Microdown'
	     #'Microdown-BookTester' #'Microdown-LaTeXExporter'
	     #'Microdown-ParentChildrenChecker'
	     #'Microdown-Pharo-Tools' ) collect: #asPackage
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
