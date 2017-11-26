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

## セットアップ

```
bundle install --path vendor/bundle
bundle exec rake db:create
bundle exec rake db:migrate
bundle exec rake db:seed

# ActiveAdminの管理者ユーザーが、
#
#   メールアドレス: admin@example.com
#   パスワード: password
#
# で作成されるので、管理者メールアドレス・パスワードを変更する。
# （上記アカウントで /admin にログインして、Admin Users メニューから変更する）
```
