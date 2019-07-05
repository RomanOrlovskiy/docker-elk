for i in {0..20}; do curl 192.168.10.10:8080; done

## Elastic search API commands
curl 192.168.10.10:9200
curl 192.168.10.10:9200/_cluster/state?pretty
curl -H "Content-Type: application/json" -XPUT http://192.168.10.10:9200/test -d '{"number_of_replicas": 2}'
curl 192.168.10.10:9200/_nodes/process?pretty
curl -H "Content-Type: application/json" -XPUT 'http://192.168.10.10:9200/data_1/' -d '{     "settings" : {         "index" : {             "number_of_shards" : 5,             "number_of_replicas" : 1         }     } }'
curl -XDELETE 192.168.10.10:9200/twitter
curl 192.168.10.10:9200/_cluster/health?pretty