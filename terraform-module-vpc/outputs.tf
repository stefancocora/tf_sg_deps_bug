output "region" {
  value = "${var.region}"
}
output "account" {
  value = "${var.account}"
}
output "publicnet-routetable" {
    value = "${aws_route_table.publicnet.id}"
}
output "vpccidr" {
    value = "${aws_vpc.main.cidr_block}"
}

output "vpcid" {
    value = "${aws_vpc.main.id}"
}

output "vpcroutetableid" {
  value = "${aws_vpc.main.main_route_table_id}"
}

output "igwid" {
  value = "${aws_internet_gateway.igw.id}"
}

output "zoneid" {
  value = "${aws_route53_zone.main.zone_id}"
}
