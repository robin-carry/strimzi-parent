# One Chart to Rule Them All

`Note: Tested on Docker-Desktop`

## Current support

This single helm chart will start:
1. Strimzi Kafka Operator
2. Three broker Kafka Cluster
3. Kafka Connect (without any plugins)
4. RedPanda Console (Kafka UI)

_...& with the same concept more kafka components can be added_

## Prerequisite

1. Need to have `Helm` & `git` cli installed
2. Run the `0-init.sh` shell script

## Start All Services

```shell
$> 1-start.sh # Run the shell script
```

## Clean up All Services

```shell
$> 2-stop.sh # Run the shell script
```
