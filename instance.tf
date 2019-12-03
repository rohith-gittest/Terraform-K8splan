#resource "aws_key_pair" "iac" {
#  key_name   = "iac"
#  public_key = "${file("id_rsa.pub")}"
#}
resource "aws_instance" "public" {
  ami                         = "${var.aws_inst_ami}"
  instance_type               = "${var.aws_inst_inst_type[1]}"
  count                       = 3
  subnet_id                   = "subnet-016602c7e4f4f225e"
  key_name                    = "k8-ha-test"
  vpc_security_group_ids      = ["sg-09c4abb6db6ac7ed2"]
  associate_public_ip_address = "true"
  user_data                   = "${file("copyssh.sh")}"
  tags = {
    Name = "k8master${count.index}"
  }
}
