resource "aws_instance" "nginx_srv" {
  count = 1
  # ami             = "ami-099b7bab1b9843525" # Amazon Linux AMI
  ami           = data.aws_ami.latest_ubuntu.id
  # ami = "ami-075d8cd2ff03fa6e9" # Debian 12 (HVM), EBS General Purpose (SSD) Volume Type.

  instance_type = "t4g.micro"

  key_name = "1207_4_Crystall"

  vpc_security_group_ids = [
    aws_security_group.external_net.id
  ]

  tags = {
    Name    = "CrystallTest"
    Owner   = "SMMikh"
    Project = "CrystallPazels."
  }

  lifecycle {
    create_before_destroy = true
    # ignore_changes        = [user_data]
  }
}
