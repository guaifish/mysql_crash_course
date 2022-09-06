# MySQL 必知必会 样例表

## 运行容器

```yml
version: "3"

services:
  db:
    image: guaifish/mysql_crash_course:0.1
    container_name: mysql_crash_course
    ports:
      - 3306:3306
    volumes:
      - mysql:/var/lib/mysql
    environment:
      - MYSQL_USER=admin
      - MYSQL_PASSWORD=12345678
      - MYSQL_ROOT_PASSWORD=12345678

volumes:
  mysql:
```
