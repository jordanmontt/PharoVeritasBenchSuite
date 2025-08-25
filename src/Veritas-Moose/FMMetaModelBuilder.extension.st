Extension { #name : 'FMMetaModelBuilder' }

{ #category : '*Veritas-Moose' }
FMMetaModelBuilder >> processCompiledMethod: aMethod [

	| method |
	method := aMethod.

	"If the method is a reflective method we need to ensure it is compiled and use its compiled method.
	A refelctive method is for exemple a method created via a metalink and that was never executed."
	(aMethod isKindOf: ReflectiveMethod) ifTrue: [ 
		method := aMethod
			          compileAndInstallCompiledMethod;
			          compiledMethod ].
	"self assert: method isCompiledMethod."

	"29 of October 2019: The MSEProperty:type:(opposite:) pragma is deprecated and should not be used anymore. But we still keep it for some time for backward compatibility."
	method pragmas
		detect: [ :each | 
			#( #MSEProperty:type:opposite: #MSEProperty:type: #FMProperty:type:opposite: #FMProperty:type: #FMProperty:type:defaultValue: ) includes: each selector ]
		ifFound: [ :pragma | 
			| prop |
			prop := FM3Property named: (pragma argumentAt: 1) asString.
			method comment ifNotNil: [ :c | prop comment: c ].
			typeDict at: prop put: (pragma argumentAt: 2).
			mmClassDict at: prop put: method methodClass.
			pragma selector = #FMProperty:type:defaultValue: ifTrue: [ prop defaultValue: (pragma argumentAt: 3) ].
			(pragma selector = #FMProperty:type: 
				and: [ method pragmas anySatisfy: [ :p | p selector = #withDefaultValueFromType ] ]) 
					ifTrue: [ prop hasDefaultValueFromType: true ].
			(pragma selector = #MSEProperty:type:opposite: or: [ pragma selector = #FMProperty:type:opposite: ]) ifTrue: [ 
				oppositeDict at: prop put: (pragma argumentAt: 3) ].
			self processInfosFrom: method for: prop.

			elements add: prop ]
]
