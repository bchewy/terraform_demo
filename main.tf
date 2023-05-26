provider "aws"{
        region= "us-east-2" #ohio
}
# Create a simple demo EC2 Instance
resource "aws_instance" "myec2"{
        ami = var.ami
        instance_type = var.instance_type
        key_name =  var.key_name
        vpc_security_group_ids = [aws_security_group.instance.id]
        tags = {
                Name = var.name
        }
}
# Create a security group demo
resource "aws_security_group" "instance" {
  name = var.name
  ingress {
    from_port   = var.ssh_port
    to_port     = var.ssh_port
    protocol    = "tcp"
    cidr_blocks = var.allow_ssh_from_cidrs
  }
}
# To destory your instances after use
### terraform destroy -target aws_instance.myec2
### terraform destroy -target aws_security_group.instance