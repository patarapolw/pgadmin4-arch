FROM debian:bullseye-slim
RUN apt-get update
RUN apt-get install -y curl gnupg2 lsb-release
RUN curl https://www.pgadmin.org/static/packages_pgadmin_org.pub | apt-key add
RUN echo "deb https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt-get update
RUN apt-get install -o dir::cache::archives="/" -d -y pgadmin4
ENTRYPOINT [ "/bin/bash", "-c", "cp pgadmin4*.deb /out/" ]