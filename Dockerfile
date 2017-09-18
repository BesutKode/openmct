FROM node:8.5
LABEL maintainer="duniapengetahuan.12345@gmail.com"
RUN groupadd -r openmct && useradd --no-log-init -r -g openmct -ms /bin/bash openmct
COPY . /var/lib/openmct
WORKDIR /var/lib/openmct
RUN chown -R openmct /var/lib/openmct
USER openmct
RUN npm install
EXPOSE 8080
CMD ["npm","start"]
