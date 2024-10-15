provider { 
    region = "ap-south-1"
}

module "network" { 
     source = "./modules/vpc-module"
     # No variables are used all the values are hardcoded in this module
}
module "compute" { 
     source = "./module/compute-module"
     vpc_id = module.network.vpc_id
     subnet1-id = module.network.subnet1-id
     subnet2-id = module.network.subnet2-id
     sg_id = module.network.sg_id
}