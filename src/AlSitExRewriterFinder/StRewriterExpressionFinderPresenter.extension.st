Extension { #name : 'StRewriterExpressionFinderPresenter' }

{ #category : '*AlSitExRewriterFinder' }
StRewriterExpressionFinderPresenter >> searchExpressionOnAllClasses [

	| dialogWindow methods ruleHolder critiques |
	dialogWindow := scopeSelectorPresenter openDialog.
	dialogWindow okAction: [
		methods := scopeSelectorPresenter selectedClasses flatCollectAsSet: [ :each | each methods, each class methods ].
		ruleHolder := StRewriterRuleHolder lhs: patternCodePresenter lhs rhs: ''.
		critiques := StRewriterRenrakuApplier obtainCritiquesOf: methods forRules: { ruleHolder }.
		(StRewriterOccurrencesBrowserPresenter critiques: critiques) open ]
]
