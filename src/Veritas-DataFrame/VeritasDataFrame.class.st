Class {
	#name : 'VeritasDataFrame',
	#superclass : 'VeritasBenchSuite',
	#category : 'Veritas-DataFrame',
	#package : 'Veritas-DataFrame'
}

{ #category : 'accessing' }
VeritasDataFrame class >> applicationPackages [

	^ #( #'DataFrame-IO' #DataFrame ) collect: #asPackage
]

{ #category : 'utilities' }
VeritasDataFrame >> loadFileInDataFrame: aFileName [

	| file |
	file := (FileLocator imageDirectory / aFileName) asFileReference.
	^ DataFrame readFromCsv: file
]

{ #category : 'api' }
VeritasDataFrame >> run [
	"self runSyntheticOneHundredTimes"
	^ self runSyntheticFiftyTimes
]

{ #category : 'running' }
VeritasDataFrame >> runSyntheticFiftyTimes [
	"This is a synthetic dataset generated using make_regression of sklearn. 
	It weights 117 MB. It has 1,000,000 rows and 5 columns. It contains only numbers"

	self loadFileInDataFrame: 'tiny_fifty_times_larger_dataset.csv'
]

{ #category : 'running' }
VeritasDataFrame >> runSyntheticFiveHundredTimes [ 
	"This is a small synthetic dataset generated using make_regression of sklearn.
	It weights 1150 MB. It has 10,000,000 rows and 5 columns. It contains only numbers"

	self loadFileInDataFrame: 'tiny_five_hundred_times_larger_dataset.csv'
]

{ #category : 'running' }
VeritasDataFrame >> runSyntheticOneHundredTimes [
	"This is a synthetic dataset generated using make_regression of sklearn.
	It weights 234 MB. It has 2,000,000 rows and 5 columns. It contains only numbers"

	self loadFileInDataFrame: 'tiny_one_hundred_times_larger_dataset.csv'
]

{ #category : 'running' }
VeritasDataFrame >> runSyntheticOneThousandTimes [
	"This is a synthetic dataset generated using make_regression of sklearn.
	It weights 2,34 GB. It has 20,000,000 rows and 5 columns. It contains only numbers"

	self loadFileInDataFrame: 'tiny_one_hundred_times_larger_dataset.csv'
]

{ #category : 'running' }
VeritasDataFrame >> runSyntheticTenTimes [
	"This is a synthetic dataset generated using make_regression of sklearn.
	It weights 23 MB. It has 200,000 rows and 5 columns. It contains only numbers"

	self loadFileInDataFrame: 'tiny_ten_times_larger_dataset.csv'
]

{ #category : 'running' }
VeritasDataFrame >> runSyntheticTwoHundredTimes [
	"This is a synthetic dataset generated using make_regression of sklearn.
	It weights 468 MB. It has 4,000,000 rows and 5 columns. It contains only numbers"

	self loadFileInDataFrame: 'tiny_two_hundred_times_larger_dataset.csv'
]

{ #category : 'running' }
VeritasDataFrame >> runTinySynthetic [
	"This is a small synthetic dataset generated using make_regression of sklearn.
	It weights 2,3 MB. It has 20,000 rows and 5 columns. It contains only numbers"

	self loadFileInDataFrame: 'tiny_dataset.csv'
]
