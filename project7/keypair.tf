resource "tls_private_key" "ssh_key" {
 algorithm = "RSA"
 rsa_bits  = 4096
}
# public key in aws
resource "aws_key_pair" "key1" {
 key_name = "terraformdockerkey"
 public_key = tls_private_key.ssh_key.public_key_openssh
}

 