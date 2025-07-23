resource "aws_route_table" "public_route" {
  vpc_id = aws_vpc.mahesh_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.mahesh_igw.id
  }

  
  tags = {
    Name = "public-route"
  }
}

resource "aws_route_table" "private_route" {
  vpc_id = aws_vpc.mahesh_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id  = aws_nat_gateway.mahesh_ngw.id
  }

  
  tags = {
    Name = "private-route"
  }
}

resource "aws_route_table_association" "public_rt_1" {
  subnet_id      = aws_subnet.public_subnest_1.id
  route_table_id = aws_route_table.public_route.id
}

resource "aws_route_table_association" "public_rt_2" {
  subnet_id      = aws_subnet.public_subnest_2.id
  route_table_id = aws_route_table.public_route.id
}

resource "aws_route_table_association" "private_rt_1" {
  subnet_id      = aws_subnet.private_subnest_1.id
  route_table_id = aws_route_table.private_route.id
}

resource "aws_route_table_association" "private_rt_2" {
  subnet_id      = aws_subnet.private_subnest_2.id
  route_table_id = aws_route_table.private_route.id
}