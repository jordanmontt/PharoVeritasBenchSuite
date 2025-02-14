Class {
	#name : 'AlSitExRewriterFinder',
	#superclass : 'Object',
	#category : 'AlSitEx-Rewriter-Objects',
	#package : 'AlSitEx-Rewriter',
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
