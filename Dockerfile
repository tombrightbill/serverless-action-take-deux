FROM node:10-slim

LABEL "com.github.actions.name"="Deploy a Worker"
LABEL "com.github.actions.description"="Deploy a Worker with the Serverless Framework"
LABEL "com.github.actions.icon"="cloud"
LABEL "com.github.actions.color"="orange"

RUN yarn global add serverless 
RUN serverless create --template cloudflare-workers --path ${HOME}/worker-deploy &&\
    cd ${HOME}/worker-deploy &&\
    serverless plugin install --name serverless-cloudflare-workers &&\
    rm -rf helloWorld.js

COPY serverless.yml ./${HOME}/${GITHUB_ACTION}/serverless.yml

ADD entrypoint.sh /entrypoint.sh


