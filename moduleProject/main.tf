module "production" {
    source = "./Modules"
    myenv = "Production"
    ami = "ami-0ad21ae1d0696ad58"
    instance_type = "t2.micro"
  
}
module "dev" {
    source = "./Modules"
    myenv = "dev"
    ami = "ami-0ad21ae1d0696ad58"
    instance_type = "t2.micro"
  
}