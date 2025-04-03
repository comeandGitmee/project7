resource "aws_security_group" "web_server_sg" {
 name        = "terraform-docker"
 description = "Allow web traffic and SSH"
 vpc_id      = aws_vpc.vpc1.id

 ingress {
   description = "HTTP from anywhere"
   from_port   = 80
   to_port     = 80
   protocol    = "tcp"
   cidr_blocks = ["0.0.0.0/0"]
 }

 ingress {
   description = "HTTPS from anywhere"
   from_port   = 8080
   to_port     = 8100
   protocol    = "tcp"
   cidr_blocks = ["0.0.0.0/0"]
 }
 ingress {
   description = "SSH from specific IP"
   from_port   = 22
   to_port     = 22
   protocol    = "tcp"
   cidr_blocks = ["98.197.66.156/32"]  # Replace with your IP
 }
 egress {
   from_port   = 0
   to_port     = 0
   protocol    = "-1"  # All protocols
   cidr_blocks = ["0.0.0.0/0"]
 }

 tags = {
    Name = "terraformsg-docker"
  }
}
 