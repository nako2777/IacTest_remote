variable "vpc_id" {
  type = string
}

variable "subnet_private_id_list" {
  type = list(string)
}

variable "subnet_public_id_list" {
  type = list(string)
}