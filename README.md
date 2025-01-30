# Terraform-and-Cloud-Infrastructure
This Terraform configuration sets up an AWS infrastructure for deploying an ECS service with an Application Load Balancer (ALB) in a VPC.
- VPC with public and private subnets.
- Internet Gateway to allow public-facing services.
- Security Groups for the ALB and ECS Service.
- ECS Cluster, Task Definition, and Service.
- Application Load Balancer (ALB) for routing traffic to ECS containers.
# Prerequisites
1. An AWS account.
2. AWS CLI configured with access to your AWS account (via `aws configure`).
3. Terraform installed (preferably version 1.x or later) you can run below command for installing terraform on Linux OS: </br>
   - sudo yum install -y yum-utils shadow-utils </br>
   - sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo </br>
   - sudo yum -y install terraform
# Run the setup by following below Steps:
<h3>Step1.</h3> Clone the code from Github repository:
<h3>Step2. </h3> Update the AWS region if needed. By default, the region is set to "us-west-1" 
<h3>Step3.</h3> terraform init </h1>
<h3>Step4. </h3> terraform plan </h1>
<h3>Step5. </h3> terraform apply </h1>
<h3>Step6. </h3> Now if everything is working fine and wanted to delete this all created resources run below command: <br>
    <h5>terraform destroy</h5>

   

   

