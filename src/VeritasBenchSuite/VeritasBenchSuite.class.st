Class {
	#name : 'VeritasBenchSuite',
	#superclass : 'Object',
	#category : 'VeritasBenchSuite',
	#package : 'VeritasBenchSuite'
}

{ #category : 'accessing' }
VeritasBenchSuite class >> applicationClasses [

	^ self applicationPackages flatCollect: #definedClasses
]

{ #category : 'accessing' }
VeritasBenchSuite class >> applicationMethods [

	^ self applicationPackages flatCollect: #methods as: Set
]

{ #category : 'accessing' }
VeritasBenchSuite class >> applicationPackages [
	"Return an array of packages"

	^ self subclassResponsibility
]

{ #category : 'accessing' }
VeritasBenchSuite >> applicationClasses [

	^ self class applicationClasses
]

{ #category : 'accessing' }
VeritasBenchSuite >> applicationPackages [

	^ self class applicationPackages
]

{ #category : 'api' }
VeritasBenchSuite >> run [

	^ self subclassResponsibility
]
