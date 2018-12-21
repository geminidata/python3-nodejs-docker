FROM bitnami/minideb

RUN apt-get update && \
    apt-get install -y curl gnupg python3 && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash - && \
    apt-get install -y nodejs && \
	curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && \
    python3 get-pip.py && \
	rm get-pip.py && apt-get clean 

