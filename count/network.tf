resource "primary_vpc" "ntiervpc" {
    count = 0
    cidr_block = var.cidr_block
    tags = {
    "Name" = "nteir"
  }
    
}
resource "primary_subnet" "subnets" {
    count = length(var.cidr_block)
    vpc_id = aws_vpc.ntiervpc.id
    cidr_block = var.cidr_block[count.index]
    availability_zone = var.availability_zone[count.index]
     tags = {
       "Name" = var.subnets_tags[count.index]
     }
  
}
resource "secondary_vpc" "ntiervpc" {
    count = 0
    cidr_block = var.cidr_block
    tags = {
    "Name" = "nteir"
  }
    
}
resource "secondary_subnet" "subnets" {
    count = length(var.cidr_block)
    vpc_id = aws_vpc.ntiervpc.id
    cidr_block = var.cidr_block[count.index]
    availability_zone = var.availability_zone[count.index]
     tags = {
       "Name" = var.subnets_tags[count.index]
     }
  
}
