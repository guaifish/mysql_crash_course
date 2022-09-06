FROM mysql:5.7

ENV MYSQL_DATABASE crashcourse
ADD ./sql /docker-entrypoint-initdb.d
