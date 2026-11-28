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
  default     = "10.0.1.0/24"
}

variable "subnet_cidr_2" {
  description = "The CIDR block for the subnet 2"
  type        = string
  default     = "10.0.2.0/24"
}


variable "subnet_cidr_3" {
  description = "The CIDR block for the subnet 3"
  type        = string
  default     = "10.0.3.0/24"
}

variable "subnet_cidr_4" {
  description = "The CIDR block for the subnet 3"
  type        = string
  default     = "10.0.4.0/24"
}

variable "project_name" {
  description = "The project name for resource naming tagging"
  type        = string
  default     = "static-infrastructure"
}

