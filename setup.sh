#!/bin/bash


status=0
while [ $status -ne 200 ]
do
    # Wait for Grafana to be ready
    sleep 5
    # Add user for Hamburg
    status=$(curl --write-out %{http_code} --silent --output /dev/null -XPOST -H "Content-Type: application/json" -d '{
        "name":"hamburg",
        "login":"hamburg",
        "password":"hamburg@grafana"
    }' -u "admin:admin"  http://localhost:3000/api/admin/users)
    echo "Status User Creation: $status"
done
