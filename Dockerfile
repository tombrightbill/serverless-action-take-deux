FROM node:10-slim

LABEL "com.github.actions.name"="Deploy a Worker"
LABEL "com.github.actions.description"="Deploy a Worker with the Serverless Framework"
LABEL "com.github.actions.icon"="cloud"
LABEL "com.github.actions.color"="orange"

RUN yarn global add serverless 
RUN mkdir -p /root/worker-deploy &&\
	echo $HOME &&\
	echo $HOME &&\
	echo "home should be above" &&\
	cd root/workspace/worker-deploy &&\
	echo "PWD" &&\
	serverless create --template cloudflare-workers &&\
    serverless plugin install --name serverless-cloudflare-workers &&\
    rm -rf helloWorld.js &&\
    echo $HOME

ADD serverless.yml /root/worker-deploy/serverless.yml

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]


