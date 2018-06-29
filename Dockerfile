FROM bitnami/minideb as builder

RUN apt-get update -y && \
    apt-get install -y curl gnupg python3 & \
    curl -sL https://deb.nodesource.com/setup_10.x | bash - && \
    apt-get install -y nodejs && \
	curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && \
    python3 get-pip.py && \
	rm get-pip.py && apt-get clean && \
    npm install mkdirp && \
    npm install node-sass --unsafe-perm && \
    npm install && \
    npm run build && \
    npm cache clean --force
