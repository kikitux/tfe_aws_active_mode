output "ssh_tf_client" {
  value = "ssh ubuntu@${var.dns_hostname}-client.${var.dns_zonename}"
}

output "tfe_appplication" {
  value = "https://${var.dns_hostname}.${var.dns_zonename}"
}

output "ssh_tfe_server" {
  value = "ssh -J ubuntu@${var.dns_hostname}-client.${var.dns_zonename} ubuntu@<internal ip address of the TFE server>"
}

output "create_admin_user" {
  value = "https://${var.dns_hostname}.${var.dns_zonename}/admin/account/new?token=${random_id.user_token.hex}"
}