#DB Output
output "db_password" {
  value = random_password.password_postgres.result
  sensitive = true
}

output "db_adress" {
  value = aws_db_instance.db.address
}

output "db_endpoint" {
  value = aws_db_instance.db.endpoint
}

# Output the access key and secret key for use
output "access_key_id" {
  value     = aws_iam_access_key.rds_user_key.id
  sensitive = true
}

output "secret_access_key" {
  value     = aws_iam_access_key.rds_user_key.secret
  sensitive = true
}