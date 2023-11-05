# Pro Pilkki 2 host in container

## Options

### Docker

#### Quick start

Start container that listens on host port 4500

    make run

#### Other actions in Makefile

Build image and tag (See Makefile for tag):

    make build

Stop container:
    
    make stop

Remove container:

    make rm

Remove image:

    make rmi

Push to repository (See Makefile for tag):

    make push

### Kubernetes

Create namespace

    kubectl create ns pp2host

#### Deploy to cluster with kubectl

See mount options in pp2host.yaml first and modify for your needs.

    kubectl apply -f pp2host.yaml

Uninstall
    
    kubectl delete -f pp2host.yaml

#### Deploy with helm

See mount options in chart/templates/deployment.yaml and modify for your needs.

    helm install pp2host chart -n pp2host

Uninstall

    helm uninstall pp2host