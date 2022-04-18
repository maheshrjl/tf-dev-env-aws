resource "aws_security_group" "dev_sg" {
  name        = "dev_sg"
  description = "dev security group"
  vpc_id      = aws_vpc.dev_vpc.id

  ingress {
    cidr_blocks = ["${chomp(data.http.myip.body)}/32"]
    description = "Allow incoming traffic from my ip"
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow outgoing traffic to the internet"
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }
  
  tags = {
    "Name" = "dev_sg"
  }
}