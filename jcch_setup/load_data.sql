START TRANSACTION;
COPY INTO region    from '/home/pei/Project/benchmarks/JCC-H/out/region.tbl'   USING DELIMITERS '|', '\n';
COPY INTO nation    from '/home/pei/Project/benchmarks/JCC-H/out/nation.tbl'   USING DELIMITERS '|', '\n';
COPY INTO supplier  from '/home/pei/Project/benchmarks/JCC-H/out/supplier.tbl' USING DELIMITERS '|', '\n';
COPY INTO customer  from '/home/pei/Project/benchmarks/JCC-H/out/customer.tbl' USING DELIMITERS '|', '\n';
COPY INTO part      from '/home/pei/Project/benchmarks/JCC-H/out/part.tbl'     USING DELIMITERS '|', '\n';
COPY INTO partsupp  from '/home/pei/Project/benchmarks/JCC-H/out/partsupp.tbl' USING DELIMITERS '|', '\n';
COPY INTO orders    from '/home/pei/Project/benchmarks/JCC-H/out/orders.tbl'   USING DELIMITERS '|', '\n';
COPY INTO lineitem  from '/home/pei/Project/benchmarks/JCC-H/out/lineitem.tbl' USING DELIMITERS '|', '\n';
COMMIT;

