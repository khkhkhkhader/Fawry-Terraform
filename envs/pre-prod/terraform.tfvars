env = "pre-prod"

vpc_cidr = "10.10.0.0/16"

public_subnet_cidrs = [
  "10.10.1.0/24",
  "10.10.2.0/24"
]

azs = [
  "us-east-1a",
  "us-east-1b"
]

ami_id        = "ami-05ffe3c48a9991133" 
key_name      = "preprod-key"
instance_type = "t2.micro"
instance_count = 1
