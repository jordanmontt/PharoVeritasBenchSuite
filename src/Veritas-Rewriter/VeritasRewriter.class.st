Class {
	#name : 'VeritasRewriter',
	#superclass : 'VeritasBenchSuite',
	#category : 'Veritas-Rewriter-Objects',
	#package : 'Veritas-Rewriter',
	#tag : 'Objects'
}

{ #category : 'as yet unclassified' }
VeritasRewriter class >> applicationPackages [

	^ #( 'NewTools-RewriterTools' 'NewTools-RewriterTools-Backend' ) collect: #asPackage
]
