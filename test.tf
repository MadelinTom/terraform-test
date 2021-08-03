resource "null_resource" "test1" {
  provisioner "local-exec" {
    command = "ibmcloud oc cluster ls"
    interpreter = ["/bin/bash", "-c"]
  }
}
