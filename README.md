
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

## Understanding and Mnanaging terraform state
  terraform state is seeing as terraform memory

  ### Terraform state
  Terraform state is a file that tracks the resources managed by theis Ids
  ### Why we need it