## Copyright © 2022, Oracle and/or its affiliates. 
## All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl

output "loadbalancer_public_url" {
  value = "http://${oci_load_balancer_load_balancer.lb1.ip_address_details[0].ip_address}:8080"
}

output "generated_ssh_private_key" {
  value = tls_private_key.public_private_key_pair.private_key_pem
  sensitive = true
}