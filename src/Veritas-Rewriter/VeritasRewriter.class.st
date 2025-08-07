Class {
	#name : 'VeritasRewriter',
	#superclass : 'Object',
	#category : 'Veritas-Rewriter-Objects',
	#package : 'Veritas-Rewriter',
	#tag : 'Objects'
}

{ #category : 'as yet unclassified' }
VeritasRewriter class >> applicationPackages [

	^ #( 'NewTools-RewriterTools' 'NewTools-RewriterTools-Backend' ) collect: #asPackage
]
