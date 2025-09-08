module "vm" {
  source        = "./module/gcp-instance"
  
  instance_name = var.instance_name
  machine_type  = var.machine_type
  os_family     = var.image_family
  zone          = var.zone
  project_id    = var.project_id
}
