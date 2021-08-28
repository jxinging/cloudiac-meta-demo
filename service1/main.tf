resource "null_resource" "instance" {
  triggers = {
    id = "ecs-1234"
    vpc = var.env_network.outputs.vpc_id
    storage = var.env_storage.outputs.s3_bucket_id
  }
}

/*
另一种方案: 提供 cloudiac provider data-source

认证信息可以自动通过环境变量传入

data "cloudiac_envs" "appxxx_network" {
  project_name_regex = "^appxxx$"
  name_regex = "^network"
}

data "cloudiac_envs" "appxxx_storage" {
  project_name_regex = "^appxxx$"
  name_regex = "^storage"
}

resource "null_resource" "instance" {
  triggers = {
    id = "ecs-1234"
    vpc = data.cloudiac_envs.0.appxxx_network.vpc_id
    storage = data.cloudiac_envs.0.appxxx_storaget.s3_bucket_id
  }
}
*/
