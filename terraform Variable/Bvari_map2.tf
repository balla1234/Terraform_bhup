variable "filename" {
     default = "/root/terraform-course/terraform-variables/devops-auto-variable.txt"
}

variable "content" {
    default = "This is auto generated from a variable"
}

variable "devops_op_trainer" {}

variable "content_map" {
type = map
default = {
"content1" = "this is the cool content 1"
"content2" = "this is the cool content 2"
}
}
