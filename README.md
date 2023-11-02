# Part1: Docker-File-Creation-Github-and-Docker-Hub-Integration

## 1. Created a simple Hello World Flask App.
## 2. Created an Instance on AWS and installed Docker using command "sudo apt install docker.io"
## 3. Cloned the App from Github to my Instance using command "git clone https://github.com/Alibasti97/Docker-File-Creation-Github-Docker-Hub-Integration.git"
## 4. Created a Dockerfile.
## 5. Build the Docker Image using "sudo docker build -t hello-node:latest ." 

### Output: This is the output when I build the image from Dockerfile.
DEPRECATED: The legacy builder is deprecated and will be removed in a future release.
            Install the buildx component to build images with BuildKit:
            https://docs.docker.com/go/buildx/

Sending build context to Docker daemon  60.42kB
Step 1/5 : FROM node:14-slim
 ---> 7671819c5461
Step 2/5 : WORKDIR /app
 ---> Running in 0753d32dce10
Removing intermediate container 0753d32dce10
 ---> f9d1f77b685c
Step 3/5 : COPY app.js /app/
 ---> 105ec522fcfd
Step 4/5 : EXPOSE 3000
 ---> Running in 243ed790b6ea
Removing intermediate container 243ed790b6ea
 ---> b37c5a7e3eb5
Step 5/5 : CMD ["node", "app.js"]
 ---> Running in 66d319a4caed
Removing intermediate container 66d319a4caed
 ---> 88493946db3f
Successfully built 88493946db3f
Successfully tagged hello-node:latest

## 6. Pushing Docker Image to Docker Hub.
#### sudo docker tag hello-node:latest alibasti97/nodejs-hello:latest
#### I also used the sudo docker login command and added the username and password.
#### sudo docker push alibasti97/nodejs-hello:latest
## Output: This is the output when I pushed the Docker Image to Docker Hub.
The push refers to repository [docker.io/alibasti97/nodejs-hello]
4e40459d22da: Pushed 
2ee86676f327: Pushed 
928bc7057ef4: Mounted from library/node 
b0666e48242f: Mounted from library/node 
2e9d059eafd1: Mounted from library/node 
e9c0f39d77af: Mounted from library/node 
61a5c84a1270: Mounted from library/node 
latest: digest: sha256:cfa838d193a812a4514635eea8f395bafd3f17b0398239e991a7a19c09c332e2 size: 1780

## 7. Created a Github Repository 
#### https://github.com/Alibasti97/nodejs-docker.git
#### I used the following commands to push the code to github.
#### 1. "git init" to initialize the git local repo.
#### 2. "git status" to check the status of the files.
#### 3. "git add ." to add the files to the staging area.
#### 4. "git commit -m "Initial Commit" to commit the files.
#### 5. "git remote add origin https://github.com/Alibasti97/nodejs-docker.git" to add the origin.
#### 6. "git push -u origin main" the push the code to the remote repo.

## Output: This is the output when I pushed the code to Remote Repo.
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 4 threads
Compressing objects: 100% (3/3), done.
Writing objects: 100% (3/3), 2.12 KiB | 2.12 MiB/s, done.
Total 3 (delta 1), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
To https://github.com/Alibasti97/nodejs-docker.git
   10f6b15..26b6bd9  main -> main
branch 'main' set up to track 'origin/main'.
