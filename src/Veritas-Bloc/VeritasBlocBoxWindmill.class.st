Class {
	#name : 'VeritasBlocBoxWindmill',
	#superclass : 'VeritasBenchSuite',
	#category : 'Veritas-Bloc',
	#package : 'Veritas-Bloc'
}

{ #category : 'testing' }
VeritasBlocBoxWindmill class >> isDeprecated [ 

	^ true
]

{ #category : 'api' }
VeritasBlocBoxWindmill >> run [

	^ VeritasBloc new runBoxWindmillBlocCase
]
