resource "local_file" "pet" {
  filename = "pets.txt"
  content  = "we love pets!"
}
resource "random_pet" "mypet" {
  prefix    = "MR"
  separator = "."
  length    = "1"
}

resource "local_file" "name" {
  filename = "demo.txt"
  content = var.demo
}
variable "demo" {
    default = "name"
    type = string
}
