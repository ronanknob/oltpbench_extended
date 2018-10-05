DROP TABLE nation IF EXISTS;
DROP TABLE region IF EXISTS;
DROP TABLE part IF EXISTS;
DROP TABLE supplier IF EXISTS;
DROP TABLE partsupp IF EXISTS;
DROP TABLE orders IF EXISTS;
DROP TABLE customer IF EXISTS;
DROP TABLE lineitem IF EXISTS;

CREATE TABLE nation  ( n_nationkey  INTEGER NOT NULL,
                       n_name       VARCHAR(25) NOT NULL,
                       n_regionkey  INTEGER NOT NULL,
                       n_comment    VARCHAR(152));

CREATE TABLE region  ( r_regionkey  INTEGER NOT NULL,
                       r_name       VARCHAR(25) NOT NULL,
                       r_comment    VARCHAR(152));

CREATE TABLE part  ( p_partkey     INTEGER NOT NULL,
                     p_name        VARCHAR(55) NOT NULL,
                     p_mfgr        VARCHAR(25) NOT NULL,
                     p_brand       VARCHAR(10) NOT NULL,
                     p_type        VARCHAR(25) NOT NULL,
                     p_size        INTEGER NOT NULL,
                     p_container   VARCHAR(10) NOT NULL,
                     p_retailprice DECIMAL(15,2) NOT NULL,
                     p_comment     VARCHAR(23) NOT NULL );

CREATE TABLE supplier ( s_suppkey     INTEGER NOT NULL,
                        s_name        VARCHAR(25) NOT NULL,
                        s_address     VARCHAR(40) NOT NULL,
                        s_nationkey   INTEGER NOT NULL,
                        s_phone       VARCHAR(15) NOT NULL,
                        s_acctbal     DECIMAL(15,2) NOT NULL,
                        s_comment     VARCHAR(101) NOT NULL);

CREATE TABLE partsupp ( ps_partkey     INTEGER NOT NULL,
                        ps_suppkey     INTEGER NOT NULL,
                        ps_availqty    INTEGER NOT NULL,
                        ps_supplycost  DECIMAL(15,2)  NOT NULL,
                        ps_comment     VARCHAR(199) NOT NULL );

CREATE TABLE customer ( c_custkey     INTEGER NOT NULL,
                        c_name        VARCHAR(25) NOT NULL,
                        c_address     VARCHAR(40) NOT NULL,
                        c_nationkey   INTEGER NOT NULL,
                        c_phone       VARCHAR(15) NOT NULL,
                        c_acctbal     DECIMAL(15,2)   NOT NULL,
                        c_mktsegment  VARCHAR(10) NOT NULL,
                        c_comment     VARCHAR(117) NOT NULL);

CREATE TABLE orders  ( o_orderkey       INTEGER NOT NULL,
                       o_custkey        INTEGER NOT NULL,
                       o_orderstatus    VARCHAR(1) NOT NULL,
                       o_totalprice     DECIMAL(15,2) NOT NULL,
                       o_orderdate      TIMESTAMP NOT NULL,
                       o_orderpriority  VARCHAR(15) NOT NULL,  
                       o_clerk          VARCHAR(15) NOT NULL, 
                       o_shippriority   INTEGER NOT NULL,
                       o_comment        VARCHAR(79) NOT NULL);

CREATE TABLE lineitem ( l_orderkey    INTEGER NOT NULL,
                        l_partkey     INTEGER NOT NULL,
                        l_suppkey     INTEGER NOT NULL,
                        l_linenumber  INTEGER NOT NULL,
                        l_quantity    DECIMAL(15,2) NOT NULL,
                        l_extendedprice  DECIMAL(15,2) NOT NULL,
                        l_discount    DECIMAL(15,2) NOT NULL,
                        l_tax         DECIMAL(15,2) NOT NULL,
                        l_returnflag  VARCHAR(1) NOT NULL,
                        l_linestatus  VARCHAR(1) NOT NULL,
                        l_shipdate    TIMESTAMP NOT NULL,
                        l_commitdate  TIMESTAMP NOT NULL,
                        l_receiptdate TIMESTAMP NOT NULL,
                        l_shipinstruct VARCHAR(25) NOT NULL,
                        l_shipmode     VARCHAR(10) NOT NULL,
                        l_comment      VARCHAR(44) NOT NULL);
