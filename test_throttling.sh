#!/bin/bash

echo "Testing throttling per sliding window."
for i in {0..50}; do 
    curl  -s -o /dev/null -H "Token: abcdef" -w "%{http_code}\n" "http://localhost:8000/up"
done
echo "Sleeping for 10 seconds"
sleep 10
echo "Testing throttling per sliding window again"
for i in {0..50}; do 
    curl  -s -o /dev/null -H "Token: abcdef" -w "%{http_code}\n" "http://localhost:8000/up"
done
echo "Test finished!"
sleep 5
echo "Testing throttling per User Token"
for i in {0..50}; do 
    echo "User 1: abcdef"
    curl  -s -o /dev/null -H "Token: abcdef" -w "%{http_code}\n" "http://localhost:8000/up"
    echo "User 2: fedcba"
    curl  -s -o /dev/null -H "Token: fedcba" -w "%{http_code}\n" "http://localhost:8000/up"
    echo "User 3: blabla"
    curl  -s -o /dev/null -H "Token: blabla" -w "%{http_code}\n" "http://localhost:8000/up"
done
echo "Test finshed!"
