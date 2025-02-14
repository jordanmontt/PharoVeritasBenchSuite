Class {
	#name : 'AlSitExRewriter',
	#superclass : 'Object',
	#category : 'AlSitEx-Rewriter-Objects',
	#package : 'AlSitEx-Rewriter',
	#tag : 'Objects'
}

{ #category : 'as yet unclassified' }
AlSitExRewriter class >> applicationPackages [

	^ #( 'NewTools-RewriterTools' 'NewTools-RewriterTools-Backend' ) collect: #asPackage
]
