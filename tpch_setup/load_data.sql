START TRANSACTION;
COPY INTO region    from '/home/pei/Project/benchmarks/tpch-postgres/dbgen/out/region.tbl'   USING DELIMITERS '|', '\n';
COPY INTO nation    from '/home/pei/Project/benchmarks/tpch-postgres/dbgen/out/nation.tbl'   USING DELIMITERS '|', '\n';
COPY INTO supplier  from '/home/pei/Project/benchmarks/tpch-postgres/dbgen/out/supplier.tbl' USING DELIMITERS '|', '\n';
COPY INTO customer  from '/home/pei/Project/benchmarks/tpch-postgres/dbgen/out/customer.tbl' USING DELIMITERS '|', '\n';
COPY INTO part      from '/home/pei/Project/benchmarks/tpch-postgres/dbgen/out/part.tbl'     USING DELIMITERS '|', '\n';
COPY INTO partsupp  from '/home/pei/Project/benchmarks/tpch-postgres/dbgen/out/partsupp.tbl' USING DELIMITERS '|', '\n';
COPY INTO orders    from '/home/pei/Project/benchmarks/tpch-postgres/dbgen/out/orders.tbl'   USING DELIMITERS '|', '\n';
COPY INTO lineitem  from '/home/pei/Project/benchmarks/tpch-postgres/dbgen/out/lineitem.tbl' USING DELIMITERS '|', '\n';
COMMIT;

