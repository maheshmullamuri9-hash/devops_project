resource "aws_vpc" "mahesh_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name= "mahesh_vpc"
  }
}