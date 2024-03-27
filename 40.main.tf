resource "aws_instance" "server" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.instance.id]
  availability_zone      = var.availability_zone
  key_name               = "terraform_new_key"
  root_block_device {
    volume_size = 8
    volume_type = "gp3"
  }
  tags = {
    Name = "rado-terraform"
  }
}

resource "aws_key_pair" "terraform_new_key" {
  key_name   = "terraform_new_key"
  public_key = file("terraform_new_key.pub")
}
