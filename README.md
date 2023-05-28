
# Nodejs Application with Jenkins and K8S

 - Simple nodejs application with Jenkins as CI/CD pipeline.
 - The pipeline build the docker image then push the generated image to docker hub.
 - Execute script that applies the kubernetes service and deployment.

## Requirements

### System

- GNU/Linux
- `docker`
- `jenkins`
- `kubernetes`

### Get the Code
```
git clone https://github.com/mustafaabdelbadea/Simple-nodejs-app
cd Simple-nodejs-app
```

### Structure

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
### :rocket: Nodejs Application

#### Port
`3000`

#### Routes

- `GET /`
- `GET /health`

#### Running

* Run the application

    ```
    cd nodeapp
    node app.js
    ```
### :whale: Dockerfile

 - Copy the application from host .
 - Create work directory.
 - Expose `3000`.
 - Entry point command.

```
docker built -t  user/imagename:tagname .
docker push user/imagename:tagname
docker run user/imagename:tagname
```


### :ship: Kubernetes
- Create a deployment contains the application.
- Create a Service loadbalancer to access application.
- Starting the naming with number to make files ordered.

```
kubectl apply -f 1-app-deploy.yml
kubectl apply -f 2-app-svc.yml
```

### :fire: Script 
- Apply all kubernetes file by getting all files in kubernetes directory
```
./k8s
```

### :white_check_mark: Jenkins
- Parameter to ask which brach or commit build from. 
- Check for branch or commit if exists or not.
- Pull the code from github
- Build docker image
- Push docker image to dockerhub
- Modify deployment image with the current build number.
- Execute script to apply all kubernetes files
## Authors

- [@linkedin](https://www.linkedin.com/in/mustafa-abdelbadea/)

