variable "aws_inst_ami" {
  default = "ami-0172b92b87b435f9f"
}
variable "aws_inst_inst_type" {
  type    = "list"
  default = ["t2.nano", "t2.medium"]
}
variable "cidr_blocks" {
  type    = "list"
  default = ["10.0.0.0/16", "10.0.1.0/24"]
}

# variable "keyname" {
#  description = "The name for the key pair."
#  type        = "string"
#  default     = "iac"
#}
#variable "publickey" {
#  description = "The public key material."
#  default     = "./id_rsa.pub"
#}
