variable "env_network" {
  default = {
    id = "env-xxxxx"
    outputs = {
      vpc_id = "vpc-xxxx"
    }
  }
}

variable "env_storage" {
  default = {
    id = "env-xxxxx"
    outputs = {
      s3_bucket_id = "cn-beijing-bucket1"
    }
  }
}

