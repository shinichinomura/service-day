# 開発環境構築

## 環境変数

direnv を利用。

```
# for docker-compose
export MYSQL_ROOT_PASSWORD="password"

# for databases.yml
export MYSQL_USERNAME="root"
export MYSQL_PASSWORD=$MYSQL_ROOT_PASSWORD
export MYSQL_HOST="127.0.0.1"
```
