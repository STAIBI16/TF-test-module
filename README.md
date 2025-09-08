# Terraform GCP Instance Module
This repository contains a Terraform module for deploying a Google Cloud Platform (GCP) Compute Engine instance. The module is designed to be reusable and customizable for various GCP projects.
## Structure
- `main.tf`: Main configuration file for the root module.
- `providers.tf`: Specifies the required providers (GCP).
- `terraform.tfvars`: Contains variable values for the deployment.
- `variables.tf`: Declares input variables for the root module.
- `versions.tf`: Specifies required Terraform and provider versions.
- `module/gcp-instance/`: Contains the reusable GCP instance module.
  - `main.tf`: Logic for creating the GCP instance resource.
  - `variables.tf`: Input variables for the instance module.
  - `scripts/startup-script.sh`: Startup script executed on instance creation.
## Usage
1. **Configure Providers**
   - Edit `providers.tf` to set up your GCP credentials and project information.
2. **Set Variables**
   - Update `terraform.tfvars` with your desired values (e.g., project ID, region, instance type).
3. **Customize the Module**
   - The `module/gcp-instance` directory contains the logic for creating a Compute Engine instance. You can modify `main.tf` and `variables.tf` to fit your requirements.
   - The `scripts/startup-script.sh` can be customized to run commands on instance startup.
4. **Initialize and Apply**
   ```sh
   terraform init
   terraform plan
   terraform apply
   ```
## Example
```yaml
module "gcp-instance" {
  source         = "./module/gcp-instance"
  instance_name  = "example-instance"
  machine_type   = "e2-medium"
  zone           = "us-central1-a"
  project        = var.project
  startup_script = file("${path.module}/module/gcp-instance/scripts/startup-script.sh")
}
```
## Requirements
- Terraform >= 1.0.0
- GCP credentials with sufficient permissions
## License
MIT