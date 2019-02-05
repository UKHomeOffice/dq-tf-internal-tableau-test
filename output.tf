output "rds_internal_tableau_endpoint" {
  value = "${aws_db_instance.postgres.endpoint}"
}

output "rds_internal_tableau_hostname" {
  value = "${aws_db_instance.postgres.hostname}"
}
