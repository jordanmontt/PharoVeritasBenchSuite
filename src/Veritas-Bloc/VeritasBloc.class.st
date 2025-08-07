Class {
	#name : 'VeritasBloc',
	#superclass : 'Object',
	#category : 'Veritas-Bloc',
	#package : 'Veritas-Bloc'
}

{ #category : 'running' }
VeritasBloc >> run [

	PCBenchmarkSuite new
		addCase: PCSolidCirclesBenchCase new;
		numberOfSeconds: 10;
		addAlexandrieBenchmarker;
		run
]
