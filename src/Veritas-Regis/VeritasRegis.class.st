Class {
	#name : 'VeritasRegis',
	#superclass : 'Object',
	#category : 'Veritas-Regis',
	#package : 'Veritas-Regis'
}

{ #category : 'running' }
VeritasRegis >> run [

	ESUGSetUp start.
	ERTest generateALotDataForTest. "It inserts 400 people in total"
	ESUGSetUp stop.
]
