FROM mysql:5.7

ENV MYSQL_DATABASE mysql_crash_course
ADD ./sql /docker-entrypoint-initdb.d
