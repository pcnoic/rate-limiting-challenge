#!/bin/bash

for i in {0..100}; do 
    curl  -s -o /dev/null -H "Token: abcdef" -w "%{http_code}\n" "http://localhost:8000/up"
done
