variable "resourceGroupName" {
  type=string
}
variable "location"{
  type=string
}
variable "tags" {
 type=map(any)
}
variable "vnetname" {
  type = string
}
variable "subnetname" {
  type = string
}
variable "ipaddressname" {
  type = string
}
variable "nsgname" {
  type = string
}
