resource "aws_nat_gateway" "mahesh_ngw" {
  allocation_id = aws_eip.lb.id
  subnet_id     = aws_subnet.public_subnest_2.id

  tags = {
    Name = "gw NAT"
  }
}

resource "aws_eip" "lb" {
  domain   = "vpc"
}