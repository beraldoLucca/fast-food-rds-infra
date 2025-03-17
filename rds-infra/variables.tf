variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-1"
}

variable "db_name" {
  description = "DB Name"
  type        = string
}

variable "db_username" {
  description = "DB User"
  type        = string
}

variable "db_password" {
  description = "DB Password"
  type        = string
  sensitive   = true
}

variable "db_instance_class" {
  description = "RDS Type Instance"
  type        = string
  default     = "db.t3.micro"
}

variable "db_engine" {
  description = "DB Type"
  type        = string
  default     = "postgres"
}

variable "db_engine_version" {
  description = "DB Version"
  type        = string
  default     = "14.14"
}
