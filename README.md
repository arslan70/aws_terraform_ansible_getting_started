# aws_terraform_ansible_getting_started
Sample project using Terraform to provision infrastructure on AWS and Ansible to manage it.


##Terraform to create 2 ec2 instances

Create a file terraform.tfvars for storing variable information outside this repository. Fill in the parameter values.

aws_access_key = ""
aws_secret_key = ""
private_key_path = ""



####Terraform Commands
*terraform init*
*terraform plan -var-file="../terraform.tfvars"*
*terraform apply -var-file="../terraform.tfvars"*

If all goes well you will have 2 instances running.



