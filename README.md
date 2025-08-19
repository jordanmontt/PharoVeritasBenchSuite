# Pharo Veritas Bench Suite

Veritas is a collection of Pharo applications. For each application, Veritas provides a code snippet for running the application. In this repo, we call this a benchmark: *Executing an application*.


## What is Veritas

The idea of this project is to have a set of applications that people can *run*. Yes, you have an application and you can execute an user case. 

This can be very useful for programmers that want to benchmark programms. Maybe you are developing a new compiler, a profiler that instruments the code, or you want to test different implementation or virtual machines, among other crazy possibilities. So Veritas will provide you, a set of applications that are diverse and they have different execution time lengths. You will see that you can have executions that last from less that a second to several minutes.

This is Veritas, as the Romans will say - not confirmed citation - 

> To find the truth (Veritas) you need to benchmark Pharo applications. Marcus Aurelius 


**You can *fully* automate the execution**
 
You can install Veritas, any of the projects, with all the dependencies and run it using only the command line. Like this you can run your benchmarks in a remote server like Marcus Aurelius would have liked.

You have the file in `scripts/installPharoImages.sh` that is executable  script (do not forget to give it permissions with `chmod u+x filename`) and full example of how you can fully automate downloading a Pharo image and installing Veritas.

There are some projects that have external dependencies. For example csv files. In the Section Available Benchmarks it will be explained which dependencies in details for which project. Note all the projects have dependencies. And, most importantly, this does not block the fully automatation.

In the file `scripts/installPharoImages.sh` you also have examples of how to do it. In the Section Available Benchmarks it will be explained.

There are also examples of [ReBench](github.com/smarr/ReBench) file to use rebench to run your benchs.

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

## Available Benchmarks

- [DataFrame](https://github.com/PolyMathOrg/DataFrame)
- [Cormas](https://github.com/cormas/cormas)
- [RewriteTools](https://github.com/jordanmontt/RewriteToolsSet)
- [Re:MobiDyc](https://github.com/ReMobidyc/ReMobidyc)
- [HoneyGinger](https://github.com/tomooda/HoneyGinger/)
- [Moose](https://github.com/moosetechnology/Moose)
- [Bloc](https://github.com/pharo-graphics/Bloc)
- [Regis](https://github.com/ESUG/Regis)
- [Microdowm](https://github.com/pillar-markup/Microdown)

The majority of benchmarks work right out of the box with no further treatment. But there are some that depend on files or requiere some treatment to be able to run.

### DataFrame

The DataFrame benchmark depends on datasets - csv files. So, to run `VeritasDataFrame new run` you need that file.
In this repo, along with the Veritas DataFrame code you have a small 2MB dataset that comes by default. You also have a python file that generates several synthetic benchmarks from all sizes.

Note, you don't need to use this datasets, you can use your owns. If you want to use anothe dataset, another csv file, you can. You just need to edit the method run. So you do not depend on Python. The Python file is just a plus that generates synthetic benchmarks using a linear regression distribution with some noice.

### Microdown

For this benchmark Veritas takes the [Spec2 book](https://github.com/SquareBracketAssociates/BuildingApplicationWithSpec2/) and it fully parses it. So you need to have the book files in the image repo. In the example file  `scripts/installPharoImages.sh` you can see how to do it.

### Moose

For Moose you need a Java model. Basically you can import any java application and export the model in json. For the moment Veritas does not have a default Java model in json. It will come soon.

***

The other benchmarks run smothly with just installing the baseline.