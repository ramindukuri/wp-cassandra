# Openshift- Cassandra



## Installation Process

### Prepare the Docker Image
1. docker build . -t rindukuri/wp-cassandra
2. docker login 
3. docker push rindukur/wp-cassandra
4. oc login
4. oc import-image rindukuri/wp-cassandra --confirm 
5. open oc UI and import deploy.yaml

####To login to cassandra using cqlsh, use command bin/cqlsh ${ingress point} 9042   where ingress point is the ingress point of the cassandra-cql service.

####The current cassandra-peer service is set to cassandra-peers.waus.svc.cluster.local.   Where waus is the namespace/project. Check the hostname of the service deployed and modify deploy.yaml if this is defferent and redeploy/

