#first declare the variable ad then use it
variable "vpc_name" {
  description = "This is the VPC name"
  type        = string
}

variable "vpc_cidr" {
  description = "This is the cidr for vpc"
}

variable "cidr_public" {
  description = "This is the public cidr for vpc"
}

variable "cidr_private" {
  description = "This is the private cidr for vpc"
}

variable "cidr_data" {
  description = "This is the data server cidr for vpc"
}

