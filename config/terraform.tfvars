vpc_cidr = "172.16.0.0/16"

vpc_name = {
        "Name" = "dev_vpc"  
    }

subnet_cidr = "172.16.10.0/24"

subnet_name = {
    "Name" = "dev_subnet"
}

sg_name = {
    "Name" = "allow_tls"
}

# instance ---------------------------------

instance_config = {
    instance_1 = {
        nic_name = { "Name" = "dev_nic" }
        private_ips = ["172.16.10.100"]
        instance_Name = { "Name"  = "dev-SERVER1" }
        instance_ami = "ami-03a0c45ebc70f98ea"
        instance_type = "t2.micro"
    }
    
    instance_1 = {
        nic_name = { "Name" = "dev_nic2" }
        private_ips = ["172.16.10.101"]
        instance_Name = { "Name"  = "dev-SERVER1" }
        instance_ami = "ami-03a0c45ebc70f98ea"
        instance_type = "t2.micro"
    }
}