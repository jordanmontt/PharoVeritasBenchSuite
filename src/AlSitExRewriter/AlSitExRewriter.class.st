Class {
	#name : 'AlSitExRewriter',
	#superclass : 'Object',
	#category : 'AlSitExRewriter-Objects',
	#package : 'AlSitExRewriter',
	#tag : 'Objects'
}

{ #category : 'as yet unclassified' }
AlSitExRewriter class >> applicationPackages [

	^ #( 'NewTools-RewriterTools' 'NewTools-RewriterTools-Backend' ) collect: #asPackage
]
