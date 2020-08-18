
CREATE TABLE Source(
    colName varchar
 )WITH(
    type ='kafka09',
    bootstrapServers ='127.0.0.1:9092',
    zookeeperQuorum ='127.0.0.1:9092/kafka',
    offsetReset ='latest',
    topic ='Suct_Data',
    groupId='test',
    parallelism ='1',
    timezone='Asia/Shanghai'
 );

 CREATE TABLE Sink(
    colName varchar
 )WITH(
    type ='kafka09',
    bootstrapServers ='127.0.0.1:9092',
    zookeeperQuorum ='127.0.0.1:9092/kafka',
    topic ='Suct_Data2',
    parallelism ='1'
 );


insert
into
    Sink
    select
        d.colName
    from
        Source as d


CREATE TABLE Sink(
    colName varchar
 )WITH(
    type ='console',
    parallelism ='1'
 );
