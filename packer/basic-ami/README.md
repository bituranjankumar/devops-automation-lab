# Packer Basic AMI Project 🇸🇬  

This directory contains a basic Packer template that builds an Amazon Linux 2 AMI with Nginx pre-installed. It's a beginner-friendly introduction to using HashiCorp Packer for AMI creation.  

## 📦 What it does  
- Uses the `amazon-ebs` builder to create an AMI from the latest Amazon Linux 2 base image  
- Installs updates, enables EPEL, and installs Nginx  
- Saves the AMI in your AWS account with a timestamped name  

## 🛠 Prerequisites  
- An AWS account with permission to create EC2 instances and AMIs  
- Install [Packer](https://www.packer.io/downloads) (version ≥ 1.7)  
- AWS CLI configured with credentials and default region (e.g. `ap-southeast-1`)  

## 🚀 Usage  
  
1. Change into this directory:  
   ```bash  
   cd packer/basic-ami  
   ```  
  
2. Initialize Packer (not strictly required for HCL2 templates but good practice):  
   ```bash  
   packer init .  
   ```  
  
3. Build the AMI:  
   ```bash  
   packer build -var aws_region=ap-southeast-1 main.pkr.hcl  
   ```  
  
   Packer will spin up a temporary EC2 instance, run the provisioning steps, and create a new AMI. The AMI ID will be printed at the end.  

## 🧹 Cleanup  
Because Packer automatically terminates the temporary instance after creating the AMI, there’s no extra cleanup required. If you no longer need the AMI, you can deregister it in the AWS console.  

## 🔧 Customization tips  
- Modify `ami_name` or `instance_type` in `main.pkr.hcl` to suit your needs.  
- Add more provisioning steps (e.g., install your application) inside the `provisioner "shell"` block.  
- Use variables in `main.pkr.hcl` to parameterize more settings.  

---  

Author: [@bituranjankumar](https://github.com/bituranjankumar)
