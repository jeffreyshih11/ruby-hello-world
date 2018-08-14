FROM centos/mysql-57-centos7
USER default
EXPOSE 8080
ENV RACK_ENV production
ENV RAILS_ENV production
COPY . /opt/app-root/src/

USER root
RUN chmod og+rw /opt/app-root/src/db
RUN yum install -y mysql
USER default
