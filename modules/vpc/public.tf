resource "aws_subnet" "public_subnet_2a" {
  vpc_id                  = "${aws_vpc.cluster_vpc.id}"
  cidr_block              = "172.32.0.0/20"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-2a"

  tags = {
    Name = "${var.cluster_name}-public-subnet-2a"
  }
}


resource "aws_subnet" "public_subnet_2b" {
  vpc_id                  = "${aws_vpc.cluster_vpc.id}"
  cidr_block              = "172.32.16.0/20"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-2b"

  tags = {
    Name = "${var.cluster_name}-public-subnet-2b"
  }
}


resource "aws_route_table_association" "public_subnet_2a_association" {
  subnet_id      = "${aws_subnet.public_subnet_2a.id}"
  route_table_id = "${aws_vpc.cluster_vpc.main_route_table_id}"
}


resource "aws_route_table_association" "public_subnet_2b_association" {
  subnet_id      = "${aws_subnet.public_subnet_2b.id}"
  route_table_id = "${aws_vpc.cluster_vpc.main_route_table_id}"
}
