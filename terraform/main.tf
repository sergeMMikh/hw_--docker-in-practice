resource "aws_instance" "nginx_srv" {
  count = 1
  ami           = data.aws_ami.latest_ubuntu.id

  instance_type = "t4g.micro"

  key_name = "1207_4_Crystall"

  vpc_security_group_ids = [
    aws_security_group.external_net.id
  ]

  tags = {
    Name    = "teas_app"
    Owner   = "SMMikh"
    Project = "hw_--docker-in-practice."
  }

  user_data = templatefile("userdata.tpl",
    {
      project_name = "Home Work. ",
      description  = "This is my homework on Devops engeneer course by Netology",
      owner        = "SMMikh"
      USER         = "ubuntu"
  })


  lifecycle {
    create_before_destroy = true
    # ignore_changes        = [user_data]
  }
}


