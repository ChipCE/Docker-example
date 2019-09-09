docker build -t test-ssh .
docker run -p 1022:22 --name ssh-con -d test-ssh

