
```st
| profiler experiment json sendersToPretenure benchmarkClass |
"General setting"
benchmarkClass := AlSitExDataFrame.


""""""
"To rewrite the senders"
json := 'file-name.json' asFileReference contents.
sendersToPretenure := MethodWithOffsetSerializer new
	deserialize: json.
AllocationSitesExperiment new 
	sendersToPretenure: sendersToPretenure;
	rewriteAllocationSites.


""""""
"To Profile and export the senders"
profiler := IllMemoryProfiler new
	profileOn: [ benchmarkClass new run ];
	yourself.

experiment := AllocationSitesExperiment onProfiler: profiler.
experiment allocationSiteStrategy: (MethodFromTheSamePackageStrategy 
	packagesToMatch: benchmarkClass applicationPackages).
experiment run: 'method'.

experiment := AllocationSitesExperiment onProfiler: profiler.
experiment useTextualLocationStrategy.
experiment run: 'textual'
```
