# TPC-H benchmark tools

This repository facilitates the use of the [TPC-H benchmark](http://www.tpc.org/tpch/) (or, more precisely, the TPC-H benchmark data and individual queries) for DBMS-related work in and around the [MonetDB](http://www.monetdb.org/) in-memory DBMS

Specifically, the repository comprises:

* A script for automating the tasks of building and running the data generation, creating a MonetDB database with the appropriate  schema and constraints, and loading the generated data into that DB.
* A set of query files, for each of the benchmark's 22 queries - with typical choices for the non-fixed values (e.g. `green` for `[COLOR]` in Q9).
* A set of expected result files, one for each query.
* Miscellaneous additional potentially useful scripts and SQL queries\.
* `dbgen`, the TPC's data generation utility for TPC-H. It is included in this repository as a submodule, linked to [eyalroz/tpch-dbgen](https://github.com/eyalroz/tpch-dbgen/) where it's maintained separately (with several fixes of issues over the TPC's own version). **Note: You have to perform a recursive clone (`git clone --recursive git@github.com:eyalroz/tpch-tools.git`) to also have get the contents of this submodule**.

The repository does _not_ contain:

* The specifications of the TPC-H benchmark. The specs are from the [TPC Website](http://www.tpc.org/tpc_documents_current_versions/current_specifications.asp), or you can directly downloaded the [Benchmarks Specs PDF](http://www.tpc.org/TPC_Documents_Current_Versions/pdf/TPC-H_v2.17.3.pdf).
* Source code or compiled binaries for actually executing the TPC-H benchmark, i.e. randomly sending variants of the 22 queries to a server. The `qgen` utility, in the `dbgen/` subdirectory, can generate these random queries, but it won't open a connection and throw them at your DBMS using the appropriate line protocol.

Currently, only [MonetDB](https://www.monetdb.org/) is supported as the DBMS into which data is to be loaded - but in the future this may expand.

### Requirements

* The Bourne Again Shell - bash
* various typical Unix-ish command-line tools: unzip, sed, echo and so on.
* MonetDB installed and running
* Enough disk space for the data you want (for SF 1 you're likely to need ~ 2 GB - for the generated pre-loading data and the loaded data together; but this will drop after you delete the pre-loading data down to ~ 1 GB)

### Getting started

1. Make sure you have a MonetDB 'Database Farm' set up (see the [MonetDB tutorial](https://www.monetdb.org/Documentation/UserGuide/Tutorial) if you're not sure how to do that)
2. Invoke `./scripts/setup-tpch-db` to generate data for some scale factor; it has the following command-line options:

  ```
Options:
  -r, --recreate              If the TPC-H database exists, recreate it, dropping
                              all existing data. (If this option is unset, the 
                              database must not already exist)
  -s, --scale-factor FACTOR   The amount of test data to generate, in GB
  -G, --use-generated         Use previously-generated table load files (in the
                              data generation directory instead of re-generating
                              them using the dbgen utility.
  -l, --log-file FILENAME     Name of the file to log output into
  -d, --db-name NAME          Name of the database holding TPC-H test data
                              within the DB farm
  -f, --db-farm PATH          Filesystem path for the root directory of the DB farm
                              with the generated DB
  -p, --platform PLATFORM     Platform for which to try building the data 
                              generation utility (one of ATT DOS HP IBM ICL MVS SGI
                              SUN U2200 VMS LINUX WIN32 MAC)
  -P, --port NUMBER           Network port on the local host, which the server
                              will related to the DB farm
  -D, --data-gen-dir PATH     directory in which to generate the TPC-H table data
  -k, --keep-raw-tables       Keep the raw data generated by the tool outside of
                              the DBMS
  -v, --verbose               Be verbose


 ```
3. Execute `scripts/run_benchmark_queries.sh -v` as a sanity check, to make sure you get results that look like the expected answer (you can also diff-compare the results you get with  `scripts/run_benchmark_queries.sh -w` to the reference results in `expected_results/`).

### Questions? Requests? Feedback? Bugs?

Feel free to [open an issue](https://github.com/eyalroz/tpch-tools/issues) or [write me](mailto:E.Rozenberg@cwi.nl).



-----------------------------------------------------------

## Example

### Generate table and load data

Only run it once.

```bash
./scripts/setup-tpch-db -r -G -l log.txt -d tpch -f /home/pei/Project/project_bins/monetdb_data -p LINUX -D /home/pei/Project/benchmarks/tpch-postgres/dbgen/out -k -v
```

### Run with TPC-H

```bash
./scripts/run_benchmark_queries.sh -v -q /home/pei/Project/benchmarks/tpch-postgres/dbgen/out/skinner_pure_queries -d tpch -f csv
```
