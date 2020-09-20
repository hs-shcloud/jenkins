resource "aws_vpc" "main" {
  cidr_block = "${var.vpc_cidr}"
  tags {
    Name = "shcloud_vpc"
  }
}

resource "aws_subnet" "main_subnet1" {
  count             = "${length(var.azs)}"
  availability_zone = "${element(var.azs,count.index)}"
  vpc_id            = "${aws_vpc.main.id}"
  cidr_block        = "${element(var.subnet_cidr,count.index)}"
  tags {
    Name     = "Subnet-${count.index+1}"
    Location = "Banglore"
  }
}
