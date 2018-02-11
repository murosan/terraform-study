# terraform-study

Terraformの勉強用リポジトリ

## 使い方

* Terraformのインストール(Mac)

```sh
brew install tfenv
tfenv install latest
# 確認
tfenv list
# 切り替え
tfenv use ${version}
```

* tfvars記入

```sh
cp terraform.tfvars.template terraform.tfvars
```
`terraform.tfvars`に記入

* 初期化


```sh
terraform init
```

* 実行コマンド

```sh
# Dry Run
terraform plan
# Run
terraform apply
# Destroy
terraform destroy
# Destroy specific resource
terraform destroy -target=aws_instance.terraform_study
```
