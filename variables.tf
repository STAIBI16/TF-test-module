
variable "image_family" {
  description = "The image family to use for the VM boot disk."
  type        = string
}
variable "project_id" {
  type        = string
  description = "Your GCP project ID."
}

variable "region" {
  type        = string
  description = "GCP region."
  default     = "europe-west1"
}

variable "zone" {
  type        = string
  description = "GCP zone"
  default     = "europe-west1-b"
}

variable "instance_name" {
  type        = string
  description = "Name for the VM instance."
  default     = "tf-test-vm"
}

variable "machine_type" {
  type        = string
  description = "machine type."
  default     = "e2-micro"
}


