Extension { #name : 'BlParallelUniverse' }

{ #category : '*Veritas-Bloc' }
BlParallelUniverse class >> removeForHost: aHostClass [

	^ UniversesMutex critical: [
			Universes 
				detect: [ :eachUniverse | eachUniverse hostClass = aHostClass ] 
				ifFound: [ :aUniverse | Universes := Universes copyWithout: aUniverse ]]
]
