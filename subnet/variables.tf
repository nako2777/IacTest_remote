variable "vpc_id" {
  type = string
  default = "need to input by vpc"
}

variable "subnet-cidr-list" {
  type = list(string)
}

variable "availability_zone" {
  type = list(string)
  default = ["ap-northeast-1a", "ap-northeast-1c"]
}