variable "aws_ec2_object" {
   type = "object" {{
      name = string
      instances = number
      keys = list{string}
      ami = string
}}


default = {
   name = "test_ec2_instance"
   instances = "4"
   keys = {"key1.pem","key2.pem"}
   ami = "ubuntu-afedj4"
}
}
~

