resource "local_file" "devops" {
     filename = "/root/terraform-course/terraform-variables/devops_test.txt"
     content = "This is devops test file"
}

resource "local_file" "devops-var" {
     filename = var.filename
     content = var.content
}


output "devops_op_trainer" {
value = var.devops_op_trainer
}

