variable "region" {
    description = "this is the provider region"
    type = string
}
variable "cidr_block" {
    type = string
    description = "this is entier cidrblock"
  
}
variable "subnets_cidr" {
    type = list (string)
  
}
variable "subnets_tags" {
    type = list(string)
  
}
variable "availability_zone" {
    type = list(string)
  
}

    
    
  
