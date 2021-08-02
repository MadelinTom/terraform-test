resource "null_resource" "test1" {
  provisioner "local-exec" {
    command = "ibmcloud login -a https://cloud.ibm.com"
    interpreter = ["/bin/bash", "-c"]
  }
}
