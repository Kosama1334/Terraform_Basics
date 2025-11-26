variable "instance_name" {
  description = "default name for EC2 instances Name tag"
  type = string
  default = "TF_first_instance"
}

variable "instance_type" {
  description = "default instance type for EC2 instances"
  type = string
  default = "t2.micro"
}
