## about

pythonのflaskを使ってアプリの作成、コンテナ化、minikubeでのkubernetes化

## アプリの設定・起動

### アプリ周りのinstall
```
pip install pipenv
pipenv install
```

### DB設定

```
./db/00_run_sqls.sh
```

DB設定は `db/sql.cnf` に記載してあるので、環境に合わせる

### 起動

```
pipenv run start
```

### アクセス

```
curl http://localhost:5000/
# DBアクセスするパターン
curl http://localhost:5000/user/1
```

## docker-compose化

```
docker-compose build && docker-compose up
```

```
curl http://localhost/
curl http://localhost/user/1
```

## minikubeでの起動

minikube開始（installなどは一般的な手順で）
```
minikube start
```

kube関係のファイルの適用
```
kubectl apply -f kube/ -R
kubectl config set-context $(kubectl config current-context) --namespace=flask-test
```

ブラウザで開く
```
minikube service flask-app -n flask-test
```
