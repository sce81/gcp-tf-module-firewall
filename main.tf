resource "google_compute_firewall" "ingress" {
  name          = "${var.env}-${var.name}-ingress"
  network       = var.network_attachment
  direction     = "INGRESS"
  source_ranges = var.ingress_ips

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = var.ports
  }

  source_tags = var.source_tags
}

resource "google_compute_firewall" "egress" {
  name               = "${var.env}-${var.name}-egress"
  network            = var.network_attachment
  direction          = "EGRESS"
  destination_ranges = var.egress_ips

  allow {
    protocol = "all"
  }
}
