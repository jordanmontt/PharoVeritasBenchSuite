Class {
	#name : 'VeritasBlocBoidsSkyTriangle',
	#superclass : 'VeritasBenchSuite',
	#category : 'Veritas-Bloc',
	#package : 'Veritas-Bloc'
}

{ #category : 'testing' }
VeritasBlocBoidsSkyTriangle class >> isDeprecated [

	^ true
]

{ #category : 'api' }
VeritasBlocBoidsSkyTriangle >> run [

	^ VeritasBloc new runBoidsSkyCase 
]
