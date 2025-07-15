

```st
| profiler experiment |
profiler := IllMemoryProfiler new
	profileOn: [ AlSitExCormas new run ];
	yourself.

experiment := (AllocationSitesExperiment onProfiler: profiler)
	allocationSiteStrategy: (MethodFromTheSamePackageAllLongLivedStrategy 
			packagesToMatch: AlSitExCormas applicationPackages);
	run

```
