output "ingress_link" {
  value = "${google_compute_firewall.ingress.self_link}"
}

output "egress_link" {
  value = "${google_compute_firewall.egress.self_link}"
}