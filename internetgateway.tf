resource "aws_internet_gateway" "mahesh_igw" {
  vpc_id = aws_vpc.mahesh_vpc.id

  tags = {
    Name = "mahesh-igw"
  }
}