resource "aws_internet_gateway" "internet_gateway" {
  vpc_id = aws_vpc.lab_vpc.id

  tags = {
    Name = "Internet-Gateway"
  }
}

resource "aws_nat_gateway" "nat-gw" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.public.id

  tags = {
    Name = "NAT-gateway"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.internet_gateway]
}