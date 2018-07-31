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

##Ansible to install packages and configure services

This is a really helpful guide to use dynamic AWS instances instead of static ansible inventory:
https://aws.amazon.com/blogs/apn/getting-started-with-ansible-and-dynamic-amazon-ec2-inventory-management

After following this guide you should be able to ping the servers:

*ansible all -m ping -u ec2-user -i /etc/ansible/ec2.py*
18.222.213.104 | SUCCESS => {
    "changed": false, 
    "ping": "pong"
}
18.216.7.229 | SUCCESS => {
    "changed": false, 
    "ping": "pong"


Time to manage the servers using ansible-playbook. 

In roles/common/vars/main.yaml enter information provided at insight ops portal.

Run below command to execute the plays defined in playbook.

*ansible-playbook playbook_insight_ops.yaml -i ec2.py*

Enter either Service1 or Service2 when prompted. 

If all goes well a insight_ops agent will setup and start to send logs.
