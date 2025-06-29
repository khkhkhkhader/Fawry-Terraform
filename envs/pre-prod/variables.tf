variable "env" {
  type        = string
  description = "Environment name (e.g., pre-prod)"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for the VPC"
}

variable "public_subnet_cidrs" {
  type        = list(string)
  description = "CIDR blocks for public subnets"
}

variable "azs" {
  type        = list(string)
  description = "Availability zones for subnets"
}

variable "ami_id" {
  type        = string
  description = "AMI ID for EC2 instances"
}

variable "key_name" {
  type        = string
  description = "SSH key name"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
}
