variable "instance_type" {
  description = "Default instance type"
  type        = string
  default     = "t3a.micro"
}

variable "ami_id" {
  description = "Default image - Ubuntu Server 22.04 LTS (HVM), SSD Volume Type, 64-bit (x86)"
  type        = string
  default     = "ami-023adaba598e661ac"
}

variable "ssh_port" {
  description = "The OpenSSH port"
  type        = number
  default     = 22
}

variable "http_port" {
  description = "The HTTP port"
  type        = number
  default     = 80
}

variable "availability_zone" {
  default = "eu-central-1a"
}
