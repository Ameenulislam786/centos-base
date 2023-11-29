FROM centos:8

MAINTAINER ameen.ulislam786@gmail.com

RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
 
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
RUN yum install vim net-tools bind-utils -y

COPY Dockerfile /root


