variable "os_family" {
  description = "The OS image family to use for the VM boot disk"
  type        = string
}
variable "project_id" {
  description = "GCP project ID for image lookup."
  type        = string
}
variable "instance_name" {
  type        = string
  description = "Name of the VM instance."
}

variable "machine_type" {
  type        = string
  description = "GCE machine type."
  default     = "e2-micro"
}


variable "zone" {
  type        = string
  description = "GCP zone"
}
