#!/bin/bash -e

rm map_lambda.zip

zip -r map_lambda.zip map_lambda_crail.py crail.py bin conf jars 
sh create_map_lambda.sh


