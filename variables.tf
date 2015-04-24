variable "region" {
  description = "which AWS region we will use"
  default     = "eu-west-1"
}

variable "access_key" {}
variable "secret_key" {}

variable "account" {
  description = "the aws account to use , the name you have in your .aws/config or .aws/credentials file"
  default     = "opsvpc"
}

variable "envname" {
  description = "logical name of this environment"
  default     = "envtest"      // fix_me
}

variable "domain" {
  description = "domain for this VPC"
  default     = "testops.awseuwest1.example.zone"
}

variable "vpccidr" {
  description = "the CIDR subnet used in this VPC"
  default     = "10.208.64.0/19" // fix_me
}

// test fixme
variable "source_cidr_block" {
  description = "cidr random"
  default     = "10.10.10.0/24"
}
variable "sg_web" {
  description = "sg_web"
  default     = "sg_web"
}
variable "sg_ssh" {
  description = "sg_ssh"
  default     = "sg_ssh"
}

variable "security_group_name" {
  description = "The name for the security group"
  default     = "testing-tf-sg"
}

