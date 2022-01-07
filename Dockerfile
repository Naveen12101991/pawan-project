FROM centos:latest
RUN yum install -y httpd zip unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page273/canvas.zip /var/www/html 
WORKDIR /var/www/html
RUN unzip canvas.zip 
RUN rm -rf canvas.zip &&\ 
    cp -rf canvas/*  . &&\
    rm -rf canvas
EXPOSE 80
CMD ["/usr/sbin/httpd" , "-D" ,"FOREGROUND" ]
