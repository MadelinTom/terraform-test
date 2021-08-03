resource "null_resource" "test1" {
  provisioner "local-exec" {
    command     = "ibmcloud login --apikey ${var.ibmcloud_api_key} -r eu-gb -a https://cloud.ibm.com && ibmcloud ob logging config list --cluster ${var.roks_id}"
    interpreter = ["/bin/bash", "-c"]
  }
}

# ibmcloud ob logging config create --cluster ${var.roks_id} --instance ${var.logdna_id}
