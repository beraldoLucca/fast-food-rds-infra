resource "aws_db_instance" "rds" {
  identifier            = "fast-food-rds-2"
  allocated_storage     = 20
  storage_type          = "gp2"
  engine               = var.db_engine
  engine_version       = var.db_engine_version
  instance_class       = var.db_instance_class
  db_name              = var.db_name
  username            = var.db_username
  password            = var.db_password
  publicly_accessible  = false
  skip_final_snapshot  = true

  tags = {
    Name = "RDS Instance"
  }
}
