docker build . -t rindukuri/wp-cassandra
docker login 
docker push rindukur/wp-cassandra
oc import-image rindukuri/wp-cassandra --confirm
oc apply -f stateful.set.yaml
oc apply -f cassandra.peers.service.yaml
oc apply -f cassandra.cql.service.yaml

