dev:
	rm -rf .terraform
	terraform init -backend-config=dev/state.tfvars ##bucket state file path ###
	terraform apply -auto-approve -var-file=env-dev/main.tfvars

prod:
	rm -rf .terraform
	terraform init -backend-config=prod/state.tfvars ##bucket state file path
	terraform apply -auto-approve -var-file=env-prod/main.tfvars

dev-destroy:
	rm -rf .terraform
	terraform init -backend-config=dev/state.tfvars  ##bucket state file path
	terraform apply -auto-approve -var-file=env-dev/main.tfvars

prod-destroy:
	rm -rf .terraform
	terraform init -backend-config=prod/state.tfvars    ##bucket state file path
	terraform destroy -auto-approve -var-file=env-prod/main.tfvars