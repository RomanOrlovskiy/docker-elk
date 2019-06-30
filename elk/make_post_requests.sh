#!/bin/bash

for i in {0..10}
do
  curl --header "Content-Type: application/json" \
  --request POST \
  --data "firstName=john$i&lastName=doe&address=us-east&city=NY&telephone=03131422911" \
  http://localhost:8080/owners/new
done
