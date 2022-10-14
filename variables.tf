variable "aws_access_id" {
    sensitive = true
  default = null
  description = "access id"
  type = string
}

variable "aws_access_key" {
    sensitive = true
  default = null
  description = "access key"
  type = string
}