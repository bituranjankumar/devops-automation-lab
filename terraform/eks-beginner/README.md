# Terraform EKS Beginner Project 🇸🇬

This project sets up a **minimal Amazon EKS cluster** using Terraform — perfect for beginners who want to learn how EKS automation works without exceeding the free tier.

---

## 📦 Prerequisites

1. **Install Terraform**
   ```bash
   brew install terraform
   # or for Linux
   sudo apt-get install terraform
   ```

2. **Install AWS CLI**
   ```bash
   brew install awscli
   aws configure
   ```
   You’ll be prompted for:
   - AWS Access Key ID  
   - AWS Secret Access Key  
   - Default region (use `ap-southeast-1`)  
   - Output format (`json`)

3. **IAM Permissions Required**
   - `AmazonEKSFullAccess`
   - `AmazonEC2FullAccess`
   - `IAMFullAccess`

---

## 🚀 Usage

### 1️⃣ Initialize Terraform
```bash
terraform init
```

### 2️⃣ Preview changes
```bash
terraform plan -var-file="terraform.tfvars.example"
```

### 3️⃣ Apply changes
```bash
terraform apply -var-file="terraform.tfvars.example" -auto-approve
```

Wait a few minutes — AWS will provision:
- EKS cluster
- IAM roles
- Managed node group

---

## 🔍 Verify Cluster

Once deployed:
```bash
aws eks --region ap-southeast-1 update-kubeconfig --name beginner-eks
kubectl get nodes
```

You should see your 2 nodes running 🎉

---

## 🧹 Cleanup
When done, destroy all resources:
```bash
chmod +x cleanup.sh
./cleanup.sh
```

---

## 🧠 Notes
- Uses **default VPC** for simplicity (no cost overhead)
- Node type: `t3.small` (free-tier eligible)
- Region: `ap-southeast-1` (Singapore)
- You can customize variables in `terraform.tfvars`

---

## 🏷️ Tags
```hcl
tags = {
  project = "eks-beginner"
  env     = "dev"
  owner   = "bituranjankumar"
}
```

---

### 🧰 Next Steps (Upcoming Drops)
- Add DataDog alerts for EKS cost and health  
- Automate destroy on schedule  
- Introduce reusable modules  

---

**Author:** [@bituranjankumar](https://github.com/bituranjankumar)
