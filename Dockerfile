FROM node:10-slim

LABEL "com.github.actions.name"="Deploy a Worker"
LABEL "com.github.actions.description"="Deploy a Worker with the Serverless Framework"
LABEL "com.github.actions.icon"="cloud"
LABEL "com.github.actions.color"="orange"

RUN yarn global add serverless 
RUN echo $HOME &&\
	echo $GITHUB_ACTION &&\
	serverless create --template cloudflare-workers --path ${HOME}/${GITHUB_ACTION} &&\
    cd ${HOME}/${GITHUB_ACTION} &&\
    serverless plugin install --name serverless-cloudflare-workers &&\
    rm -rf helloWorld.js

COPY serverless.yml ./${HOME}/${GITHUB_ACTION}/serverless.yml

ADD entrypoint.sh /entrypoint.sh


