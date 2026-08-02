#!/bin/bash

START_TIME=$(date +%s)

echo "script exceuted at $START_TIME"

sleep 10

END_TIME=$(date +%s)

TOTAL_TIME=(($END_TIME-$START_TIME))

echo "script exceuted in $TOTAL_TIME seconds"