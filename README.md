# Pharo Veritas Bench Suite

Veritas is a collection of Pharo applications. For each application, Veritas provides a code snippet for running it. We call a *benchmark* to action of executing an application.

## What is Veritas

Veritas gives you a set of diverse Pharo applications that you can run, with execution times ranging from less than a second to several minutes. This is useful for anyone who needs to benchmark programs. You have an application and you can execute a user case.

This is Veritas, as the Romans will say:

> To find the truth (Veritas) you need to benchmark Pharo applications. — Marcus Aurelius

**Fully automated execution.** You can install Veritas (any benchmark with all its dependencies) and run it from the command line. So, you can run benchmarks on a server. See `scripts/downloadPharoAndInstallVeritas.sh` for a full example of downloading a Pharo image, installing Veritas, and copying dependency files. Some projects have external dependencies (like csv files). See [Available Benchmarks](#available-benchmarks) for details. [ReBench](https://github.com/smarr/ReBench) configuration files are also provided.

## How to use

Just call the method `run`. For example `VeritasRewriterTransformer new run`.

**Note:** some benchmarks need pre-treatment. For example, the DataFrame benchmark needs a dataset (a csv file) placed in the same directory as the image.

## How to depend/install

Veritas contains several applications, some with many dependencies. To avoid pulling in hundreds of dependencies, no benchmark is loaded by default — only an abstract class. Each application has its own baseline, so you can load only the benchmarks you need.

### Load Veritas alone

```st
EpMonitor disableDuring: [
    Metacello new
        baseline: 'VeritasBenchSuite';
                onConflictUseLoaded;
        repository: 'github://jordanmontt/PharoVeritasBenchSuite:main';
        load ].
```

To depend on Veritas:

```st
spec
  baseline: 'VeritasBenchSuite'
  with: [ spec repository:'github://jordanmontt/PharoVeritasBenchSuite:main' ].
```

### Load a benchmark

For example, DataFrame:

```st
EpMonitor disableDuring: [
    Metacello new
        baseline: 'VeritasDataFrame';
		onConflictUseLoaded;
        repository: 'github://jordanmontt/PharoVeritasBenchSuite:main';
        load ].
```

To depend on the DataFrame benchmark:

```st
spec
  baseline: 'VeritasDataFrame'
  with: [ spec repository:'github://jordanmontt/PharoVeritasBenchSuite:main' ].
```

## Available Benchmarks

- [DataFrame](https://github.com/PolyMathOrg/DataFrame) -- Pharo's tabular data structure, similar to a spreadsheet or database table. Veritas loads a dataset as a benchmark, providing a default synthetic dataset (2.3 MB, 20,000 rows × 6 columns, only numbers) that follows a linear distribution with some noise. It also contains a Python script to generate syntethic datasets of any size.
- [Cormas](https://github.com/cormas/cormas) -- a Pharo platform for agent-based modeling and simulations supporting Companion Modelling. Veritas runs a simulation using the [ECEC model](github.com/cormas/ecec-model), simulating the survival of two populations (plants and foragers) on a two-dimensional grid.
- [RewriteTools](https://github.com/jordanmontt/RewriteToolsSet)
- [Re:MobiDyc](https://github.com/ReMobidyc/ReMobidyc) -- a multi-agent simulator for individual-based modeling in population dynamics and ecotoxicology. Veritas runs a simulation where wolves chase and eat goats in a grass field.
- [HoneyGinger](https://github.com/tomooda/HoneyGinger/) -- a smoothed-particle hydrodynamics simulator with rich visualization. Veritas renders one simulation for 40 rendering cycles (configurable).
- [Moose](https://github.com/moosetechnology/Moose) -- a platform for software and data analysis. Veritas loads a bioinformatics Java open-source project into the Moose meta-model (1,293 classes, 2,942 methods). Any Moose model can be used.
- [Bloc](https://github.com/pharo-graphics/Bloc) -- a full graphical stack built on top of a Cairo canvas.
- [Regis](https://github.com/ESUG/Regis) -- a web conference registration application.
- [Microdown](https://github.com/pillar-markup/Microdown) -- a markup language based on Markdown. Veritas parses and generates an entire book, the [Spec book](github.com/SquareBracketAssociates/BuildingApplicationWithSpec2), which has 252 pages.

Most benchmarks work out of the box. Some depend on files or need treatment to run:

### Benchmarks that need a file to execute

#### DataFrame

The DataFrame benchmark depends on datasets (csv files), so `VeritasDataFrame new run` needs a file. This repo includes a small 2 MB default dataset, plus a Python file that generates synthetic benchmarks of various sizes. You can also use your own csv file by editing the `run` method. Python is not required.

#### Microdown

This benchmark takes the [Spec2 book](https://github.com/SquareBracketAssociates/BuildingApplicationWithSpec2/) and fully parses it, so you need the book files in the image repo. See `scripts/installPharoImages.sh` for an example of how to do it.

#### Moose

Veritas comes with a default Moose model (a `json` file in the same directory as the `VeritasMoose` class), but you can use any Moose model from any language that can be parsed into Moose.

***

The other benchmarks run smoothly with just installing the baseline.