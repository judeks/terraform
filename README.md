
## Command
- Format terraform code
    terraform fmt
    terraform init
    terraform plan
    terraform apply
    terraform apply -auto-approve
    terraform destroy

## variables

## specify var file
terraform plan -var-file="testing.tfvars"

## Command Line
 terraform state list: liste all resource specific managed resource
 terraform state show aws_vpc.vpc-primary: get more information about a specific resource
 terraform output output_name: get value of output_name