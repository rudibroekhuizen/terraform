# Configure the Packet Provider
provider "packet" {
  auth_token = "${var.auth_token}"
}

# Create a project
resource "packet_project" "waarneming" {
  name = "waarneming"
}

# Create a device and add it to project waarneming
resource "packet_device" "instance" {
  hostname         = "tf.ubuntu"
  plan             = "baremetal_1"
  facility         = "ams1"
  operating_system = "ubuntu_16_04"
  billing_cycle    = "hourly"
  project_id       = "${packet_project.waarneming.id}"
}
