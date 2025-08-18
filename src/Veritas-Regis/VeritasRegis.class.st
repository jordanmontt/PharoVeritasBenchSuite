Class {
	#name : 'VeritasRegis',
	#superclass : 'VeritasBenchSuite',
	#category : 'Veritas-Regis',
	#package : 'Veritas-Regis'
}

{ #category : 'accessing' }
VeritasRegis class >> applicationPackages [

	^ #( #'ESUGApp-Database' #'ESUGApp-Component' #'ESUGApp-Core'
	     #'ESUGApp-Controller' #'ESUGApp-Extensions'
	     #'ESUGApp-Library' #'ESUGApp-PostMark-Core'
	     #'ESUGApp-Form' #'ESUGApp-View' #'ESUGApp-Model' ) collect:
		  #asPackage
]

{ #category : 'api' }
VeritasRegis >> run [

	ESUGSetUp start.
	ERTest generateALotDataForTest. "It inserts 400 people in total"
	ESUGSetUp stop.
]
