# Changelog

Todos los cambios notables de este proyecto se documentan en este archivo.
Formato basado en [Keep a Changelog](https://keepachangelog.com/es/1.0.0/).

## [v1.1] - 2026-04-30

### Added
- Módulo reutilizable modules/mi-recurso para crear buckets S3
- Workflow de CI/CD deploy.yml con terraform init, plan y apply
- Workflow de validación terraform-validate.yml
- Badge de estado del workflow en README.md
- Archivo REBASE.md documentando limpieza de historial

### Changed
- Actualizado main.tf para usar el módulo de S3
- Ampliados los endpoints del provider AWS para incluir EC2

## [v1.0] - 2026-04-30

### Added
- Configuración inicial de Terraform con provider AWS apuntando a LocalStack
- Recurso aws_s3_bucket básico
- Recurso aws_instance de tipo t2.micro
- Control de versiones: Terraform >= 1.0, provider AWS ~> 5.0
