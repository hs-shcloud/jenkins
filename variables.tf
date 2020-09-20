variable "region" {
  default = "us-east-2"
}

variable "vpc_cidr" {
  default = "172.29.0.0/16"
}

variable "subnet_cidr" {
  type    = "list"
  default = ["172.29.1.0/24", "172.29.2.0/24", "172.29.3.0/24"]
}

variable "azs" {
  type = "list"

  default = [
    "${lookup(var.region)}a",
    "${lookup(var.region)}b",
    "${lookup(var.region)}c",
  ]
}
