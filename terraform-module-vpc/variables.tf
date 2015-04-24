// fix_me remove all default variables and provide them from the module that uses this VPC module

// from version 0.4.2 TF should autodetect the credentials from .aws/credentials based on the account you give it
variable "account" {
  description = "the aws account to use , the name you have in your .aws/config or .aws/credentials file"
//  default     = "opsvpc"
}

variable "region" {
  description = "which AWS region we will use"
  default     = "eu-west-1"
}

variable "access_key" {}
variable "secret_key" {}

variable "envname" {
  description = "logical name of this environment"
}

variable "domain" {
  description = "domain for this VPC"
}

// networking settings

variable "vpccidr" {
  description = "the CIDR subnet used in this VPC"
  default     = "10.208.64.0/19" // fix_me
}

variable "elbcidr" {
  description = "the CIDR subnets used for ELBs"
  default     = {
    a = "10.208.92.0/24"        // fix_me
    b = "10.208.93.0/24"        // fix_me
    c = "10.208.94.0/24"        // fix_me
  }
}

variable "igwcidr" {
  description = "the CIDR subnets used for IGWs"
  default     = {
    a = "10.208.95.0/24"        // fix_me
    b = "10.208.96.0/24"        // fix_me
    c = "10.208.97.0/24"        // fix_me
  }
}

variable "natcidr" {
  description = "the CIDR subnets used for NAT instances"
  default     = {
    a = "10.208.98.0/24"        // fix_me
    b = "10.208.99.0/24"        // fix_me
    c = "10.208.100.0/24"       // fix_me
  }
}
