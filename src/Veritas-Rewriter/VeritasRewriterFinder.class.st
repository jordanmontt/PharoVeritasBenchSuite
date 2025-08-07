Class {
	#name : 'VeritasRewriterFinder',
	#superclass : 'Object',
	#category : 'Veritas-Rewriter-Objects',
	#package : 'Veritas-Rewriter',
	#tag : 'Objects'
}

{ #category : 'running' }
VeritasRewriterFinder >> run [
	"Search among all Pharo methods the ones that have the patter (rcv collect: arg) flattened"
	| methods ruleHolder |
	methods := Smalltalk environment allMethods asSet.
	ruleHolder := StRewriterRuleHolder lhs: '(`@receiver collect: `@arg) flattened' rhs: ''.
	^ StRewriterRenrakuApplier obtainCritiquesOf: methods forRules: { ruleHolder }
]
