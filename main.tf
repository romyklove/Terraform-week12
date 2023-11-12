module "server1" {
  source = "../modules/ec2"
  ami = "ami-05c13eab67c5d8861"
  region = "us-east-1"
  instance_type = "t3.micro"
  name = "Dev-from module"
}
output "public-ip" {
  value = module.server1.public-ip
}
