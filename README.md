
```st
| profiler experiment json sendersToPretenure |
json := 'file-name.json' asFileReference contents.
sendersToPretenure := MethodWithOffsetSerializer new
	deserialize: json.

"To rewrite the senders"
AllocationSitesExperiment new 
	sendersToPretenure: sendersToPretenure.

profiler := IllMemoryProfiler new
	profileOn: [ AlSitExCormas new run ];
	yourself.

"This exports the senders in a json file"
(AllocationSitesExperiment onProfiler: profiler)
	allocationSiteStrategy: (MethodFromTheSamePackageStrategy 
			packagesToMatch: AlSitExCormas applicationPackages);
	run.
```
