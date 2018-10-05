# OLTPBench extended project

This project is an extension of the OLTPBench project, created for a course completion work, which aims to benchmark 4 database systems using the NewSQL paradigm: VoltDB, CockroachDB, MemSQL and NuoDB.
Because the OLTPBench base project does not support all of these products, this extension of the project aims to support these systems, since the tool is extensible.


# OLTPBench product description

Benchmarking is incredibly useful, yet endlessly painful. This benchmark suite is the result of a group of
Phd/post-docs/professors getting together and combining their workloads/frameworks/experiences/efforts. We hope this
will save other people's time, and will provide an extensible platform, that can be grown in an open-source fashion. 

OLTPBenchmark is a multi-threaded load generator. The framework is designed to be able to produce variable rate,
variable mixture load against any JDBC-enabled relational database. The framework also provides data collection
features, e.g., per-transaction-type latency and throughput logs.


## OLTPBench Docs

Original project: https://github.com/oltpbenchmark

Original paper:
[OLTP-Bench: An extensible testbed for benchmarking relational databases](http://www.vldb.org/pvldb/vol7/p277-difallah.pdf) D. E. Difallah, A. Pavlo, C. Curino, and P. Cudre-Mauroux. In VLDB 2014.

Also, let us know so we can add you to our [list of publications](http://oltpbenchmark.com/wiki/index.php?title=Publications_Using_OLTPBenchmark).

Please visit the project homepage for anything other than source code: <http://oltpbenchmark.com>

## OLTPBEnch Dependencies

+ Java (greater than 1.7, but lower than 9)
+ Apache ant (to build the executables)
