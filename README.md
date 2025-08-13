# Pharo Veritas Bench Suite

Veritas is a collection of Pharo applications. For each application, Veritas provides a code snippet for running the application. In this repo, we call this a benchmark: *Executing an application*.

## How to use

You just need to call the method `run`. For example `VeritasRewriterTransformer new run`.

Pay attention that some benchmarks need some pre treatment. For example, the DataFrame benchmark needs a dataset (a csv file), so you need to place the file in the same directory of the image. Then Veritas just executes the benchmark.

## How to depend/install

Veritas contains several applications. Some of them are big with lots of dependencies. We don't want you to load hunders and introduce houndres of dependencies to your project just because you use Veritas. For this reason, we do not load any benchmark by default, just an abstract class. Each application has its baseline, so you want depend or install only the benchmarks that you want to load.

### Load Veritas alone

To load Veritas (only the abstract class with no benchmarks):

```st

EpMonitor disableDuring: [
    Metacello new
        baseline: 'VeritasBenchSuite';
                onConflictUseLoaded;
        repository: 'github://jordanmontt/PharoVeritasBenchSuite:main';
        load ].
```

And how to depend on Veritas:

```st
spec
  baseline: 'VeritasBenchSuite'
  with: [ spec repository:'github://jordanmontt/PharoVeritasBenchSuite:main' ].
```

### Load a Benchmark

To load a benchmark, in this example DataFrame:


```st
EpMonitor disableDuring: [
    Metacello new
        baseline: 'VeritasDataFrame';
		onConflictUseLoaded;
        repository: 'github://jordanmontt/PharoVeritasBenchSuite:main';
        load ].
```

And to depend on the DataFrame benchmark:

```st
spec
  baseline: 'VeritasDataFrame'
  with: [ spec repository:'github://jordanmontt/PharoVeritasBenchSuite:main' ].
```

## Available benchmarks

- [DataFrame](https://github.com/PolyMathOrg/DataFrame)
- [Cormas](https://github.com/cormas/cormas)
- [RewriteTools](https://github.com/jordanmontt/RewriteToolsSet)
- [Re:MobiDyc](https://github.com/ReMobidyc/ReMobidyc)
- [HoneyGinger](https://github.com/tomooda/HoneyGinger/)
- [Moose](https://github.com/moosetechnology/Moose)
- [Bloc](https://github.com/pharo-graphics/Bloc)
- [Regis](https://github.com/ESUG/Regis)
