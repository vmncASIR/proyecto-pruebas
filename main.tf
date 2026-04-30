terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region                      = "us-east-1"
  access_key                  = "test"
  secret_key                  = "test"
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

  endpoints {
    s3  = "http://s3.localhost.localstack.cloud:4566"
    ec2 = "http://localhost:4566"
  }
}

resource "aws_instance" "mi_instancia" {
  ami           = "ami-00000000"
  instance_type = "t2.small"

  tags = {
    Name = "instancia-prueba"
  }
}

module "mi_bucket_modulo" {
  source      = "./modules/mi-recurso"
  bucket_name = "bucket-desde-modulo"
}

output "bucket_creado" {
  value = module.mi_bucket_modulo.bucket_id
}
