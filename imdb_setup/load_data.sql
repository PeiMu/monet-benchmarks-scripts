START TRANSACTION;

copy into aka_name from '/home/pei/Project/benchmarks/imdb_job-postgres/imdb/aka_name.csv' USING DELIMITERS ',', E'\n', '"' NULL AS '';
copy into aka_title from '/home/pei/Project/benchmarks/imdb_job-postgres/imdb/aka_title.csv' USING DELIMITERS ',', E'\n', '"' NULL AS '';
--copy into cast_info from '/home/pei/Project/benchmarks/imdb_job-postgres/imdb/cast_info.csv' USING DELIMITERS ',', E'\n', '"' NULL AS '';
copy into char_name from '/home/pei/Project/benchmarks/imdb_job-postgres/imdb/char_name.csv' USING DELIMITERS ',', E'\n', '"' NULL AS '';
copy into comp_cast_type from '/home/pei/Project/benchmarks/imdb_job-postgres/imdb/comp_cast_type.csv' USING DELIMITERS ',', E'\n', '"' NULL AS '';
copy into company_name from '/home/pei/Project/benchmarks/imdb_job-postgres/imdb/company_name.csv' USING DELIMITERS ',', E'\n', '"' NULL AS '';
copy into company_type from '/home/pei/Project/benchmarks/imdb_job-postgres/imdb/company_type.csv' USING DELIMITERS ',', E'\n', '"' NULL AS '';
copy into complete_cast from '/home/pei/Project/benchmarks/imdb_job-postgres/imdb/complete_cast.csv' USING DELIMITERS ',', E'\n', '"' NULL AS '';
copy into info_type from '/home/pei/Project/benchmarks/imdb_job-postgres/imdb/info_type.csv' USING DELIMITERS ',', E'\n', '"' NULL AS '';
copy into keyword from '/home/pei/Project/benchmarks/imdb_job-postgres/imdb/keyword.csv' USING DELIMITERS ',', E'\n', '"' NULL AS '';
copy into kind_type from '/home/pei/Project/benchmarks/imdb_job-postgres/imdb/kind_type.csv' USING DELIMITERS ',', E'\n', '"' NULL AS '';
copy into link_type from '/home/pei/Project/benchmarks/imdb_job-postgres/imdb/link_type.csv' USING DELIMITERS ',', E'\n', '"' NULL AS '';
copy into movie_companies from '/home/pei/Project/benchmarks/imdb_job-postgres/imdb/movie_companies.csv' USING DELIMITERS ',', E'\n', '"' NULL AS '';
copy into movie_info from '/home/pei/Project/benchmarks/imdb_job-postgres/imdb/movie_info.csv' USING DELIMITERS ',', E'\n', '"' NULL AS '';
copy into movie_info_idx from '/home/pei/Project/benchmarks/imdb_job-postgres/imdb/movie_info_idx.csv' USING DELIMITERS ',', E'\n', '"' NULL AS '';
copy into movie_keyword from '/home/pei/Project/benchmarks/imdb_job-postgres/imdb/movie_keyword.csv' USING DELIMITERS ',', E'\n', '"' NULL AS '';
copy into movie_link from '/home/pei/Project/benchmarks/imdb_job-postgres/imdb/movie_link.csv' USING DELIMITERS ',', E'\n', '"' NULL AS '';
copy into name from '/home/pei/Project/benchmarks/imdb_job-postgres/imdb/name.csv' USING DELIMITERS ',', E'\n', '"' NULL AS '';
copy into person_info from '/home/pei/Project/benchmarks/imdb_job-postgres/imdb/person_info.csv' USING DELIMITERS ',', E'\n', '"' NULL AS '';
copy into role_type from '/home/pei/Project/benchmarks/imdb_job-postgres/imdb/role_type.csv' USING DELIMITERS ',', E'\n', '"' NULL AS '';
copy into title from '/home/pei/Project/benchmarks/imdb_job-postgres/imdb/title.csv' USING DELIMITERS ',', E'\n', '"' NULL AS '';

COMMIT; 
