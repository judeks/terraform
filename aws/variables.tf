variable "environment" {
  description = "The environment  name for resource naming tagging"
  type        = string
  default     = "production"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr" {
  description = "The CIDR block for the subnet"
  type        = string
  default     = "10.0.10.0/24"
}

variable "project_name" {
  description = "The project name for resource naming tagging"
  type        = string
  default     = "static-infrastructure"
}

