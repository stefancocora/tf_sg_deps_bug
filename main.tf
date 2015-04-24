module "vpc" {
  source            = "./terraform-module-vpc"
  account           = "${var.account}"
  domain            = "${var.domain}"
  vpccidr           = "10.208.64.0/19"
  region            = "${var.region}"
  envname           = "${var.envname}"
  secret_key        = "${var.secret_key}"
  access_key        = "${var.access_key}"
}

module "sg_web" {
  source                = "./tf_aws_secgr//sg_web"
  security_group_name   = "${var.sg_web}"
  vpc_id                = "${module.vpc.vpcid}"
  aws_access_key        = "${var.access_key}"
  aws_secret_key        = "${var.secret_key}"
  aws_region            = "${var.region}"
  source_cidr_block     = "${var.source_cidr_block}"
}
