# main.pkr.hcl
# Packer template to build a basic Amazon Linux 2 AMI with Nginx installed

packer {
  required_version = ">= 1.7.0"
}

variable "aws_region" {
  type    = string
  default = "ap-southeast-1"
}

source "amazon-ebs" "amazon-linux" {
  region        = var.aws_region
  instance_type = "t2.micro"
  ami_name      = "packer-amazon-linux-basic-{{timestamp}}"

  source_ami_filter {
    filters = {
      name                = "amzn2-ami-hvm-*-x86_64-gp2"
      virtualization-type = "hvm"
      root-device-type    = "ebs"
    }
    owners      = ["amazon"]
    most_recent = true
  }

  ssh_username = "ec2-user"
}

build {
  name    = "amazon-linux-basic"
  sources = ["source.amazon-ebs.amazon-linux"]

  provisioner "shell" {
    inline = [
      "sudo yum update -y",
      "sudo amazon-linux-extras install epel -y",
      "sudo yum install -y nginx",
      "sudo systemctl enable nginx"
    ]
  }
}
