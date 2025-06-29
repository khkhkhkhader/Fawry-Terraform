variable "env" {
  description = "Environment name (e.g., pre-prod, prod)"
  type        = string
}

variable "instance_count" {
  description = "Number of EC2 instances to launch"
  type        = number
  default     = 2
}

variable "instance_type" {
  description = "Type of EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "AMI ID for EC2 instance"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs to attach EC2 instances to"
  type        = list(string)
}

variable "key_name" {
  description = "SSH key pair name"
  type        = string
}
