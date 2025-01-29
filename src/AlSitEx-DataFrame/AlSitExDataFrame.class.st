Class {
	#name : 'AlSitExDataFrame',
	#superclass : 'Object',
	#category : 'AlSitEx-DataFrame',
	#package : 'AlSitEx-DataFrame'
}

{ #category : 'as yet unclassified' }
AlSitExDataFrame class >> applicationClasses [

	^ self applicationPackages flatCollect: #definedClasses
]

{ #category : 'as yet unclassified' }
AlSitExDataFrame class >> applicationPackages [

	^ #( #BaselineOfDataFrame #'DataFrame-IO' #'Neo-JSON-Pharo-Tests' #DataFrame #'Neo-JSON-Pharo-Core'
	     #'Neo-JSON-Core' #'AI-Normalization-Tests' #'Neo-JSON-Tests' #'DataFrame-IO-Tests' #'AlSitEx-DataFrame'
	     #BaselineOfAlSitExDataFrame #'AI-Normalization' #'Neo-CSV-Tests' #'DataFrame-Tests' #'Neo-CSV-Core'
	     #BaselineOfAINormalization ) collect: #asPackage
]

{ #category : 'as yet unclassified' }
AlSitExDataFrame >> applicationClasses [

	^ self class applicationClasses
]

{ #category : 'as yet unclassified' }
AlSitExDataFrame >> applicationPackages [

	^ self class applicationPackages
]

{ #category : 'running' }
AlSitExDataFrame >> run [
	"self runSyntheticOneHundredTimes"
	^ self runSyntheticTenTimes
]

{ #category : 'running' }
AlSitExDataFrame >> runAWS1dot6GB [
	"https://www.kaggle.com/datasets/rahulbanerjee123/aws-product-length?resource=download (529
	MB and 1.6 GB)"
	^ DataFrame readFromCsv: '/Users/sebastian/Documents/Experiments/ACEx/AWS Product Length/train.csv' asFileReference
]

{ #category : 'running' }
AlSitExDataFrame >> runProtein1dot14GB [
	"1.14 GB"
	^ DataFrame readFromCsv:
		  '/Users/sebastian/Documents/Experiments/ACEx/CITEseq22 Protein-RNA vs RNA Spearman cor data/Prot-RNA_corr_21gr.csv'
			  asFileReference
]

{ #category : 'running' }
AlSitExDataFrame >> runProtein3GB [
	"https://www.kaggle.com/datasets/antoninadolgorukova/proteinrna-vs-rna-spearman-correlation-data? select=Prot-RNA_corr_63gr.csv (3.1 GB)"
	^ DataFrame readFromCsv:
		  '/Users/sebastian/Documents/Experiments/ACEx/CITEseq22 Protein-RNA vs RNA Spearman cor data/Prot-RNA_corr_63gr.csv'
			  asFileReference
]

{ #category : 'running' }
AlSitExDataFrame >> runSynthetic [
	"This is a small synthetic dataset generated using make_regression of sklearn.
	It weights 2.3 MB. It has 20000 rows and 5 columns. It contains only numbers"
	| file |
	file := (FileLocator imageDirectory / 'tiny_dataset.csv') asFileReference.
	^ DataFrame readFromCsv: file
]

{ #category : 'running' }
AlSitExDataFrame >> runSyntheticFiftyTimes [
	"This is a small synthetic dataset generated using make_regression of sklearn. The code is
	at https://github.com/jordanmontt/lapack-experiment.
	It weights 117 MB. It has 1000000 rows and 5 columns. It contains only numbers"
	| file |
	file := (FileLocator imageDirectory / 'tiny_fifty_times_larger_dataset.csv') asFileReference.
	^ DataFrame readFromCsv: file
]

{ #category : 'running' }
AlSitExDataFrame >> runSyntheticOneHundredTimes [ 
	"This is a small synthetic dataset generated using make_regression of sklearn.
	It weights 230 MB. It has 2000000 rows and 5 columns. It contains only numbers"

	| file |
	file := (FileLocator imageDirectory / 'tiny_one_hundred_times_larger_dataset.csv') asFileReference.
	^ DataFrame readFromCsv: file
]

{ #category : 'running' }
AlSitExDataFrame >> runSyntheticTenTimes [
	"This is a small synthetic dataset generated using make_regression of sklearn.
	It weights 23 MB. It has 200000 rows and 5 columns. It contains only numbers"
	| file |
	file := (FileLocator imageDirectory / 'tiny_ten_times_larger_dataset.csv') asFileReference.
	^ DataFrame readFromCsv: file
]
