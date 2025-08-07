Class {
	#name : 'VeritasRewriterTransformer',
	#superclass : 'Object',
	#category : 'Veritas-Rewriter-Objects',
	#package : 'Veritas-Rewriter',
	#tag : 'Objects'
}

{ #category : 'running' }
VeritasRewriterTransformer >> run [

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
