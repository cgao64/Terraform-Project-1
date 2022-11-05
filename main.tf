module "vpc" {
    source = "./modules/aws_vpc"
    vpc_cidr = var.vpc_cidr
    vpc_name = var.vpc_name
}

module "subnet" {
    source = "./modules/aws_subnet"
    vpc_id = module.vpc.vpc_id
    subnet_cidr = var.subnet_cidr
    subnet_name = var.subnet_name
}

module "sg" {
    source = "./modules/aws_sg"
    vpc_id = module.vpc.vpc_id
    sg_name = var.sg_name
}

module "nic" {
    source = "./modules/aws_nic"
    subnet_id = module.subnet.subnet_id
    nic_name = var.nic_name
    private_ips = var.private_ips
}

module "instance" {
    source = "./modules/aws_instance"
    instance_Name = var.instance_Name
    instance_ami = var.instance_ami
    instance_type = var.instance_type
    nic_id = module.nic.nic_id
}