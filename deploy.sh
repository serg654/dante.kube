#!/bin/bash

set -eu

NAMESPACE=services
SCRIPT_DIR=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)

minikube kubectl -- apply -f namespace.yml
minikube kubectl -- apply -f deployment.yml -n "$NAMESPACE"
minikube kubectl -- apply -f service.yml -n "$NAMESPACE"
