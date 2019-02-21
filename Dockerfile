FROM node:10-slim

LABEL "com.github.actions.name"="Deploy a Worker"
LABEL "com.github.actions.description"="Deploy a Worker with the Serverless Framework"
LABEL "com.github.actions.icon"="cloud"
LABEL "com.github.actions.color"="orange"

RUN yarn global add serverless 
RUN mkdir -p /$HOME/worker-deploy &&\
	cd $HOME/worker-deploy &&\
	serverless create --template cloudflare-workers &&\
    serverless plugin install --name serverless-cloudflare-workers &&\
    rm -rf helloWorld.js &&\
    rm -rf serverless.yml

ADD serverless.yml $HOME/worker-deploy

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]


