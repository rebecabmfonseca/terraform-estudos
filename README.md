# Estudos sobre o Terraform
Alguns comandos:

* terraform validate
	* valida se o arquivo tá certinho
* terraform plan
	* mostra o planejamento, se vai add, mudar ou destruir os recursos
* terraform apply
	* faz, pedindo autoriação
* terraform apply -auto-approve
    * faz direto
* terraform plan --destroy
	* planeja destruir
* terraform apply --destroy -auto-approve
	* destroi direto
* terraform apply --destroy
	* destrói perguntando
* terraform destroy --target module.s3.aws_s3_bucket.bucket