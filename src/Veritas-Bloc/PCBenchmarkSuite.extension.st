Extension { #name : 'PCBenchmarkSuite' }

{ #category : '*Veritas-Bloc' }
PCBenchmarkSuite >> runVeritas [

	cases do: [ :eachCase |
		eachCase numberOfSeconds: numberOfSeconds.
		benchmarkers do: [ :eachBenchmarker |
			eachBenchmarker
			   case: eachCase;
			   runVeritas ] ]
]
