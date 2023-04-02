resource "local_file" "devops" {
    filename = "/root/terraform-course/terraform-local/devops_automated.txt"
    content = "i want to become a DevOps Engineer who knows Terraform"
}


resource "random_string" "rand-str" {
length = 16
special = true
override_special = "!#$%&*()-=[]{}:?"
}

output "rand-str" {
value = random_string.rand-str[*].result
}
