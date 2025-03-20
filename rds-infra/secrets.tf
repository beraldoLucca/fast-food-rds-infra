resource "aws_secretsmanager_secret" "rds_secret" {
  name = "rds-credentials-13"
}

resource "aws_secretsmanager_secret_version" "rds_secret_version" {
  secret_id     = aws_secretsmanager_secret.rds_secret.id
  secret_string = jsonencode({
    username = var.db_username,
    password = var.db_password,
    engine   = var.db_engine,
    host     = aws_db_instance.rds.address,
    port     = aws_db_instance.rds.port,
    dbname   = var.db_name
  })
}
