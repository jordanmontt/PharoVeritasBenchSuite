Class {
	#name : 'AlSitExRewriterTransformer',
	#superclass : 'Object',
	#category : 'AlSitExRewriter-Objects',
	#package : 'AlSitExRewriter',
	#tag : 'Objects'
}

{ #category : 'running' }
AlSitExRewriterTransformer >> run [

	| ruleHolder changes |
	ruleHolder := StRewriterRuleHolder
		              lhs: '(`@receiver collect: `@arg) flattened'
		              rhs: '`@receiver flatCollect: `@arg'
		              isForMethod: false.
	changes := StRewriterAbstractApplier defaultEngineApplier
				calculateAllChangesForRules: (OrderedCollection with: ruleHolder).
	RBRefactoryChangeManager instance performChanges: changes.
	^ changes
]
