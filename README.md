
# Nodejs Application with Jenkins and K8S

 - Simple nodejs application with Jenkins as CI/CD pipeline.
 - The pipeline build the docker image then push the generated image to docker hub.
 - Execute script that applies the kubernetes service and deployment.

### Requirements

#### System

- GNU/Linux
- `docker`
- `jenkins`
- `kubernetes`

#### Structure

```
Simple-nodejs-app/
├─ nodeapp/
│  ├─ app.js
│  ├─ package.json
├─ kubernetes/
│  ├─ 1-app-deploy.yml
│  ├─ 2-app-svc.yml
├─ Dockerfile
├─ Jenkinsfile
├─ k8s.sh
├─ README.md
```


<!-- # Simple Nodejs App

Simple Nodejs application

## Port
`3000`

## Routes

- `GET /`
- `GET /health`

## Running

* Run the application

    ```
    cd nodeapp
    node app.js
    ```
 -->
