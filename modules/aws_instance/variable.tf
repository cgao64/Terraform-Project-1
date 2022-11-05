variable "instance_Name" {
    type = map(any)
    default = {
        "Name"  = "PROD-SERVER"
    }
}

variable "instance_ami" {
    type = string
    default = "ami-023d39cbc16614424"
}

variable instance_type {
    type = string
    default = "t2.micro"
}

variable "nic_id" {
    type = string
}