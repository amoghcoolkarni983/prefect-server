# Docker Images of Prefect Server & Agent
## What is Prefect ?

Prefect is a tool for building data workflows. Prefect is a new kind of workflow management system that makes it easy to take your data pipelines and add semantics like retries, logging, dynamic mapping, caching, failure notifications, and more.

To know more about Prefect [click here](https://docs.prefect.io/)

## Information about these images

* These images consist 

## Build docker image of Prefect server
Make sure docker is running & start building the image

```bash
docker build -t prefect-server .
```


## Run Prefect server

You can access Prefect UI here - http://docker-network-host:exposed-port

You can access Prefect Server here - http://docker-network:exposed-port


## Build docker image of Prefect agent


```bash
docker build -t prefect-agent .
```

## Docker networking

Create docker network so that Prefect server is accessible to agent 


## Create project

Once agent has been identified in UI, you can create project by following UI

## Executing your first flow

```
import prefect
from prefect import task, Flow
from prefect.executors import LocalExecutor

@task
def say_hello():
    logger = prefect.context.get("logger")
    logger.info("Hello, Flow1")

with Flow("Flow1", executor=LocalExecutor()) as flow:
    say_hello()

# Register the flow under the "tutorial" project
flow.register(project_name="project-name")
```

Once the flow has been ran. You can verify flow in the Prefect UI.