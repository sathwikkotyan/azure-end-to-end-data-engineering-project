CREATE DATABASE SCOPED CREDENTIAL cred_kotyan
WITH
    IDENTITY='Managed Identity'





create external DATA source sourcee_silver
WITH(
    LOCATION='https://storageeeaccount.blob.core.windows.net/silver',
    CREDENTIAL=cred_kotyan
)


create external DATA source sourcee_gold
WITH(
    LOCATION='https://storageeeaccount.blob.core.windows.net/gold',
    CREDENTIAL=cred_kotyan
)

CREATE EXTERNAL FILE FORMAT format_parquet
WITH
(
    FORMAT_TYPE=PARQUET,
    DATA_COMPRESSION='org.apache.hadoop.io.compress.SnappyCodec'
)






















CREATE EXTERNAL TABLE gold.extsales
WITH
(
    LOCATION='extsales',
    DATA_SOURCE=sourcee_gold,
    FILE_FORMAT=format_parquet
)

as 
SELECT * FROM gold.sales

SELECT * from gold.extsales