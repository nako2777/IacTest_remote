variable "enviroment" {
  type = string
  default = "DEV"
}

module "vpc-main" {
  source = "../module/vpc"
  enviroment = var.enviroment
}