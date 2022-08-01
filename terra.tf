provider "aws" {
region = "us-east-1"
access_key="<key>"
secret_key="<key>"
}

resource "aws_instance" "k8s-main" {
ami="ami-08d4ac5b634553e16"
instance_type="t2.small"
security_groups=["launch-wizard-9"]
key_name="pem"
provisioner "local-exec" {

command = "echo ${aws_instance.k8s-main.public_ip}"
}
}
resource "aws_instance" "k8s-work1" {
ami="ami-08d4ac5b634553e16"
instance_type="t2.micro"
security_groups=["launch-wizard-9"]
key_name="pem"
provisioner "local-exec" {

command = "echo ${aws_instance.k8s-work1.public_ip}"
}
}

resource "aws_instance" "k8s-work2" {
ami="ami-08d4ac5b634553e16"
instance_type="t2.micro"
security_groups=["launch-wizard-9"]
key_name="pem"
provisioner "local-exec" {

command = "echo ${aws_instance.k8s-work2.public_ip}"
}
}

