module "master_templates" {
    source = "/cncf/master_templates-v1.10.0-ubuntu"
}

module "worker_templates" {
    source = "../worker_templates-v1.10.0-ubuntu"
}


