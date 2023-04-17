#!/bin/bash
docker run --rm -it --entrypoint '' -v ~/.aws:/.aws -u "$(id -u):$(id -g)" public.ecr.aws/aws-cli/aws-cli aws $1 
#docker run --rm -it --entrypoint 'aws' -u "$(id -u):$(id -g)" public.ecr.aws/aws-cli/aws-cli $1
