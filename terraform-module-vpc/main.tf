resource "aws_route53_zone" "main"{
  name    = "${var.domain}"
}

// Spin up the VPC.
resource "aws_vpc" "main" {
    cidr_block = "${var.vpccidr}"
    enable_dns_support = true
    enable_dns_hostnames = true
    tags {
        Name = "${var.region}-${var.account}-${var.envname}-vpc"
    }
}

resource "aws_internet_gateway" "igw" {
    vpc_id = "${aws_vpc.main.id}"

    tags {
        Name = "${var.region}-${var.account}-${var.envname}-igw"
    }
}

// remove or alter this route
resource "aws_route_table" "publicnet" {
    vpc_id = "${aws_vpc.main.id}"
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.igw.id}"
    }

    tags {
        Name = "${var.region}-${var.account}-${var.envname}-publicnet"
    }
}
