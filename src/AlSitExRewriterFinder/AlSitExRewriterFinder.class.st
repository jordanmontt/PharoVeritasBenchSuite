Class {
	#name : 'AlSitExRewriterFinder',
	#superclass : 'Object',
	#category : 'AlSitExRewriterFinder-Objects',
	#package : 'AlSitExRewriterFinder',
	#tag : 'Objects'
}

{ #category : 'running' }
AlSitExRewriterFinder >> run [
	"Search among all Pharo methods the ones that have the patter (rcv collect: arg) flattened"
	| methods ruleHolder |
	methods := Smalltalk environment allMethods asSet.
	ruleHolder := StRewriterRuleHolder lhs: '(`@receiver collect: `@arg) flattened' rhs: ''.
	^ StRewriterRenrakuApplier obtainCritiquesOf: methods forRules: { ruleHolder }
]
