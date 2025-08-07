Class {
	#name : 'BaselineOfVeritasRegis',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfVeritasRegis',
	#package : 'BaselineOfVeritasRegis'
}

{ #category : 'baselines' }
BaselineOfVeritasRegis >> baseline: spec [

	<baseline>
	self preLoad.

	spec for: #common do: [
		spec package: 'Veritas-Regis'.

		"Groups"
		spec group: 'Core' with: #( 'Veritas-Regis' ) ]
]

{ #category : 'baselines' }
BaselineOfVeritasRegis >> preLoad [
	"Download through executing the baseline because there are conflicts.
	Using onConflictUseLoaded"

	Metacello new
		baseline: 'ESUGApp';
		githubUser: 'ESUG' project: 'Regis' commitish: 'master' path: 'src';
		onWarningLog;
		onConflictUseLoaded;
		load
]
