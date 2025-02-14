Extension { #name : 'RBSmalllintChecker' }

{ #category : '*AlSitEx-Rewriter' }
RBSmalllintChecker >> run [

	environment classes do: [ :class |
		self checkClass: class.
		self checkMethodsForClass: class.
		self checkClass: class classSide.
		self checkMethodsForClass: class classSide ].
	environment packages do: [ :package | self checkPackage: package ]
]
