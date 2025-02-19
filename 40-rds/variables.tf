variable "project_name" {
  default = "expense"
}

variable "environment" {
  default = "dev"
}
variable "common_tags" {
  default = {
    project = "expense"
    environment = "dev"
    terraform = true
  }
}

variable "zone_id" {
  default = "Z08924832RQM97SFT5BZF"
}

variable "domain_name" {
  default = "ardev.space"
}