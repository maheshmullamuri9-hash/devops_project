resource "aws_subnet" "public_subnest_1" {
  vpc_id     = aws_vpc.mahesh_vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true


  tags = {
    Name = "public-1"
  }
}

resource "aws_subnet" "public_subnest_2" {
  vpc_id     = aws_vpc.mahesh_vpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true


  tags = {
    Name = "public-2"
  }
}

resource "aws_subnet" "private_subnest_1" {
  vpc_id     = aws_vpc.mahesh_vpc.id
  cidr_block = "10.0.3.0/24"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = false


  tags = {
    Name = "private-1"
  }
}

resource "aws_subnet" "private_subnest_2" {
  vpc_id     = aws_vpc.mahesh_vpc.id
  cidr_block = "10.0.4.0/24"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = false


  tags = {
    Name = "private-2"
  }
}