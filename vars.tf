variable "access_key" {}
variable "secret_key" {}
variable "subnet_id" {}
variable "vpc_id" {}
variable "key_name" {}

variable "region" {
  default = "us-east-1"
}
variable "instance_type" {
default = "m4.large"
}
variable "ami" {
default = "ami-c86c3f23"
}
