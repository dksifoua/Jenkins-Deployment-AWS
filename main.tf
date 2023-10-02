resource "aws_instance" "web_server" {
  ami = "ami-0f34c5ae932e6f0e4"
  instance_type = "t2.micro"
  user_data = file("./httpd.sh")
}

output "web_server-public_dns" {
  value = aws_instance.web_server.public_dns
}

output "web_server-public-ip" {
  value = aws_instance.web_server.public_ip
}
