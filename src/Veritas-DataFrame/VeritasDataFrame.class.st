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
	"self runSyntheticTenTimes"
	^ self runTinySynthetic
]

{ #category : 'other datasets' }
VeritasDataFrame >> runAWS1dot6GB [
    "Where to download"

    "https://www.kaggle.com/datasets/rahulbanerjee123/aws-product-length?resource=download (529
	MB and 1.6 GB)"

    self loadFileInDataFrame: 'train.csv'
]

{ #category : 'other datasets' }
VeritasDataFrame >> runProtein1dot14GB [
    "Where to downlaod"

    "https://www.kaggle.com/datasets/antoninadolgorukova/proteinrna-vs-rna-spearman-correlation-data (1.4 GB)"

    DataFrame readFromCsv: 'Prot-RNA_corr_21gr.csv'
]

{ #category : 'other datasets' }
VeritasDataFrame >> runProtein3GB [
    "Where to downlaod"

    "https://www.kaggle.com/datasets/antoninadolgorukova/proteinrna-vs-rna-spearman-correlation-data? select=Prot-RNA_corr_63gr.csv (3.1 GB)"

    DataFrame readFromCsv: 'Prot-RNA_corr_63gr.csv'
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
VeritasDataFrame >> runSyntheticTwentyFiveTimes [
	"This is a synthetic dataset generated using make_regression of sklearn. 
	It weights 58 MB. It has 500,000 rows and 5 columns. It contains only numbers"

	self loadFileInDataFrame: 'tiny_twenty_times_larger_dataset.csv'
]

{ #category : 'running' }
VeritasDataFrame >> runSyntheticTwoHundredFiftyTimes [
	"This is a synthetic dataset generated using make_regression of sklearn.
	It weights 585 MB. It has 5,000,000 rows and 5 columns. It contains only numbers"

	self loadFileInDataFrame: 'tiny_two_hundred_fifty_times_larger_dataset.csv'
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
