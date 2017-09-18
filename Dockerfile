FROM node:8.5
LABEL maintainer="Damillora (duniapengetahuan.12345@gmail.com)"
RUN useradd -ms /bin/bash openmct
COPY . /var/lib/openmct
WORKDIR /var/lib/openmct
RUN chown -R mikku /var/lib/openmct
USER openmct
RUN npm install
EXPOSE 8080
CMD ["npm","start"]
