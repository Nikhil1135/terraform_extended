resource "aws_vpc" "this" {
  cidr_block = var.cidr_block
}
resource "aws_subnet" "this" {
  vpc_id = aws_vpc.this.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"
}