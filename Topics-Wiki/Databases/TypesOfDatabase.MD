1. Relational Database
- MySQL, Postgress, SQLServer
- Cockroach - built for scale

been around a long time, most popular in use. UniqueId's and relationships, primary keys and foreign keys. It organizes data in it's smallest form. Concurrency via transactions. 

SQL is a query language that lets you write and access data in the database.
ACID Compliant - Atomicity, Consistency, Isolation, Durability
or to simplify the data won't break even if the hardware fails

best for most apps, but it's not good with unstrctured data. 

Breaking things up into smaller tables (as you have to do with this) is contextually at odds of how we see the world (like a form filled in on a single sheet) this is called an impedance mismatch.

Often used as an integration mechanism. 

It's designed to run on a large system, not lots of little distributed clusters. 


2. Key Value Database
- Reddis, Memcached EtseeD

Set & Get
everything stored in memory, fast but limited storage
no queries or joins. Think of it as a persistent hashmap. Many allow for metadata. 
best for caching, leaderboards, real time delivery, message cues, pub/sub

often used in combo with a more persistant solution. 


3. Wide Column Family
- Apache Hbase, Casandra

it's like a 2dimension version of Key Value
no scheme, unstructured, uses CQL as a language
easy to scale up. Gives the data that is accessed together, so it works well with clusters. It's not as good for slicing up data for things like analysis. 

oten used for time-series data, historical records, high-write, low-read, things like punching a timeclock or recording weather patterns or history of shows watched on netflicks

also usually used in combination with other solutions, but this one is the write layer or the feeding data layer.


4. Document Oriented
- MongoDB, Firestore, Couchbase, DynamoDB, RethinkDB

each document is a container for key value pairs, unstructured but grouped together in collections, heirarchical

scema-less, relational ish quieries, no joins, considered somewhat general purpose, for speed many will store a kind of table of contents of the data in a single document. If you don't know where to start this is a good place. Often uses something like JSON to help organize. 

Best used for Apps, Games, IOT, Content Management

not good for graphs, commenting or social, or things that update often, because those things are best joined.


5. Graph
- Neo4j, Degraph

treats the relationship as just another kind of data, treats it as nodes and edges, it's like the data isn't together but has links to each other. Nodes and Arcs. It handles many and moving relationships well. 

Can do many to many relationships without a join table.

Best for graphs, knowledge graphs, recomendation engines. 

also technically ACID


6. Search
- ElasticSearch, Apache Lucene, Solr,
- Cloud Based: Algolia, MeiliSearch

Similar to document oriented, it creates it's own index from searching the data in the documents, then scans the index when searching. 

mostly used in search engines, and typeahead search boxes


7. Multi-Model
- Fauna, CosmosDB, 

Similar to document oriented but it has a lot of internal options of what it can do with the data. 


8. Data Warehouse


9. Time-Series


10. Vector Database
- Weaviate, Milvus, 

focus on use with machine learning, otherwise very similar to a graph or search database, often has custom query language per brand of Database. It measures the similarity between data. 


11. Object Databases

came out in the 90's as a response to relational databases. It mostly didn't catch on due to relational dominance. 


12.  AmorphousDB by Jim Starkey
- can't find a way to play with it but he talks up
- https://www.linkedin.com/pulse/amorphousdb-rethinking-relational-database-jim-starkey/
- 

----

Martin Fowler proposed refferring to some of NoSQL as Aggregregate Oriented Databases - https://www.youtube.com/watch?v=qI_g07C_Q5I
- this includes key value, document and column but not graph, but reffered to all of those as schemaless
- recomended the book Data Driven Design
- 


availability vs consistency - is a domain/business choice (example double booking a hotel or not letting the transaction happen)
- see also cap theorum
- this is specific for distributed systems
- it can be mitigated somewhat, or chosen per type of thing, but the choice remains
- availability could also be thought of as response time
- could also be thought of as safety and liveness (in concurrent computing circles)

book - NoSQL Distilled - Martin Fowler(2012)



