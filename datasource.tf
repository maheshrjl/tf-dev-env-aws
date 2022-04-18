data "http" "myip" {
  url = "http://ipv4.icanhazip.com"
  #Retrieve IP address & use it to create security group
}

data "aws_ami" "dev_ami" {
    most_recent = true
    owners = [ "137112412989" ]

    filter {
      name = "name"
      values = [ "amzn2-ami-kernel-5.10-hvm-*" ]
    }
}