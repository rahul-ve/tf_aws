# Output declarations

output "db_connect_string" {
  description = "MySQL database connection string"
  value       = "Server=${aws_db_instance.database.address}; Database=ExampleDB; Uid=${var.db_username}; Pwd=${var.db_password}"
  # without below, error will be raised as the above interpolation contains sensitive info
  sensitive = true
}
