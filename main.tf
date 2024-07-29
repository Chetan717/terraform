module "Prod" {
    source = "./moduleProject/Modules"
    myenv = "prod"
    instance_type = "t2.micro"
    ami = "ami-0aff18ec83b712f05"
}