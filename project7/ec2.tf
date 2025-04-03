resource "aws_instance" "server1" {
 ami = "ami-02f624c08a83ca16f"
 instance_type = "t2.micro"
 subnet_id = aws_subnet.pusub1.id
 vpc_security_group_ids = [aws_security_group.web_server_sg.id]
 key_name = "terraformdockerkey"
 user_data = file("setup.sh")
 tags = {
   Name = "Terraform_instance"
 }
}