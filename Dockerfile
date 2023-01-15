FROM ubuntu:22.04

ENV TERM linux
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install -y

RUN apt install -y git ansible sudo vim curl
RUN groupadd test
RUN useradd -c "Test User" -g test -G sudo -s /bin/bash -m test
RUN mkdir -v /work
COPY . /work
RUN /usr/bin/find /work -type f -exec chmod 0644 {} \;
RUN chown -R test:test /work
RUN sed -i 's/ALL$/NOPASSWD:ALL/' /etc/sudoers

CMD ["/bin/bash"]
