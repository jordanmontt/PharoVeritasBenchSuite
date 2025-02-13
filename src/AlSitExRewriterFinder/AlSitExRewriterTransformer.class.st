Class {
	#name : 'AlSitExRewriterTransformer',
	#superclass : 'Object',
	#category : 'AlSitExRewriterFinder-Objects',
	#package : 'AlSitExRewriterFinder',
	#tag : 'Objects'
}

{ #category : 'running' }
AlSitExRewriterTransformer >> run [

	| ruleHolder |
	ruleHolder := StRewriterRuleHolder
		              lhs: '(`@receiver collect: `@arg) flattened'
		              rhs: '`@receiver flatCollect: `@arg'
		              isForMethod: false.
	^ StRewriterAbstractApplier defaultEngineApplier calculateAllChangesForRules: (OrderedCollection with: ruleHolder)
]
