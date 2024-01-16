# /home/ec2-user/example2.Dockerfile
FROM alpine:3.19.0

RUN adduser -D dev | echo "pass"
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

ARG VAR1="This is a var in Docker File"

ENV VAR2="This is var for container"

RUN echo $VAR1 >> userfile && echo $VAR2 >> userfile && whoami >> userfile

USER dev
WORKDIR /home/dev

RUN echo $VAR1 >> newfile && echo $VAR2 >> newfile && whoami >> newfile

USER root