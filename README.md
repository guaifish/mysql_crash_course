# MySQL 必知必会 样例表

https://github.com/guaifish/mysql_crash_course

## 启动 MySQL 服务端

```yml
version: "3"

services:
  db:
    image: guaifish/mysql_crash_course
    container_name: mysql_crash_course
    networks:
      - mysql_crash_course
    environment:
      - MYSQL_USER=admin
      - MYSQL_PASSWORD=12345678
      - MYSQL_ROOT_PASSWORD=12345678
    command: [
      "--character-set-server=utf8mb4",
      "--collation-server=utf8mb4_general_ci"
    ]

networks:
  mysql_crash_course:
    name: mysql_crash_course
    driver: bridge
```

## 连接 MySQL 服务端

```cmd
docker run --rm -it --network mysql_crash_course mysql:5.7 mysql -hmysql_crash_course -P3306 -uadmin -p12345678
```
