----------------
--create view calender
---------------------

CREATE VIEW gold.calender
AS
select 
*
from 
OPENROWSET(
    BULK 'https://storageeeaccount.blob.core.windows.net/silver/adventure_calender/',
    FORMAT='PARQUET'
)as query1



----------------
--create view product_categories
---------------------

CREATE VIEW gold.product_categories
AS
select 
*
from 
OPENROWSET(
    BULK 'https://storageeeaccount.blob.core.windows.net/silver/adventure_product_categories/',
    FORMAT='PARQUET'
)as query1


----------------
--create view adventure_works_customer
---------------------

CREATE VIEW gold.adventure_works_customer
AS
select 
*
from 
OPENROWSET(
    BULK 'https://storageeeaccount.blob.core.windows.net/silver/adventure_works_customer/',
    FORMAT='PARQUET'
)as query1


----------------
--create view product
---------------------


CREATE VIEW gold.product
AS
select 
*
from 
OPENROWSET(
    BULK 'https://storageeeaccount.blob.core.windows.net/silver/product/',
    FORMAT='PARQUET'
)as query1


----------------
--create view product_subcatagories
---------------------

CREATE VIEW gold.product_subcatagories
AS
select 
*
from 
OPENROWSET(
    BULK 'https://storageeeaccount.blob.core.windows.net/silver/product_subcatagories/',
    FORMAT='PARQUET'
)as query1



----------------
--create view returns
---------------------

CREATE VIEW gold.returns
AS
select 
*
from 
OPENROWSET(
    BULK 'https://storageeeaccount.blob.core.windows.net/silver/returns/',
    FORMAT='PARQUET'
)as query1



----------------
--create view sales
---------------------

CREATE VIEW gold.sales
AS
select 
*
from 
OPENROWSET(
    BULK 'https://storageeeaccount.blob.core.windows.net/silver/sales/',
    FORMAT='PARQUET'
)as query1



----------------
--create view territories
---------------------

CREATE VIEW gold.territories
AS
select 
*
from 
OPENROWSET(
    BULK 'https://storageeeaccount.blob.core.windows.net/silver/territories/',
    FORMAT='PARQUET'
)as query1



