resource "null_resource" "test1" {
  provisioner "local-exec" {
    command = "ibmcloud login"
    interpreter = ["/bin/bash", "-c"]
  }
}
