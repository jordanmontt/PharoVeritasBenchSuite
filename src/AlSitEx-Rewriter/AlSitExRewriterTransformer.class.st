Class {
	#name : 'AlSitExRewriterTransformer',
	#superclass : 'Object',
	#category : 'AlSitEx-Rewriter-Objects',
	#package : 'AlSitEx-Rewriter',
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
	"RBRefactoryChangeManager instance performChanges: changes."
	^ changes
]
