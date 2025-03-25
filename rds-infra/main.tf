resource "aws_db_instance" "rds" {
  identifier            = "fast-food-rds"
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

resource "aws_security_group_rule" "allow_eks_to_rds" {
  type                     = "ingress"
  from_port                = 5432
  to_port                  = 5432
  protocol                 = "tcp"
  security_group_id        = var.rds_sg_id
  source_security_group_id = var.eks_sg_id
}
