DROP TABLE IF EXISTS src PURGE;

CREATE TABLE src(key STRING COMMENT 'default', value STRING COMMENT 'default') STORED AS TEXTFILE;

LOAD DATA LOCAL INPATH "${hiveconf:test.data.dir}/kv1.txt" OVERWRITE INTO TABLE src;
