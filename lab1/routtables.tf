# public subnet rout table
resource "aws_route_table" "rt1" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "${var.customer}-${var.env}-rt_public1"
  }
}


# pure private subnet rout table
resource "aws_route_table" "rt3" {
  vpc_id = aws_vpc.main.id



  tags = {
    Name = "${var.customer}-${var.env}-rt_private2"
  }
}



# private subnet rout table

resource "aws_route_table" "rt5" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.mainNat.id
  }

  tags = {
    Name = "${var.customer}-${var.env}-rt_private3"
  }
}

