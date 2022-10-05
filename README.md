### Learn Terraform - Provision AKS Cluster

This repo is a companion repo to the [Provision an AKS Cluster learn guide](https://learn.hashicorp.com/terraform/kubernetes/provision-aks-cluster), containing Terraform configuration files to provision an AKS cluster on Azure.

Learning Terraform. Cloned repo from HashiCorp. Followed HashiCorp documentation listed above.

### Text referenced
Going thru this book listed here, co-authored by fellow Cloud Architect at Microsoft: [Hands-on Kubernetes on Azure: Use Azure Kubernetes Service to automate management, scaling, and deployment of containerized applications, 3rd Edition](https://www.amazon.com/Hands-Kubernetes-Azure-containerized-applications/dp/1801079943).

### Issues encountered
Using MSFT non-prod Azure tenant, ran into issues authenticating via az cli. This very simple doc helped me: [Switch Tenants in Azure CLI](https://dallin.blog/switch-tenants-in-azure-cli/).

Steps to remediate:
1) make sure you're logged in via az cli: `az login`
2) log in when you're prompted with browser
3) switch to appropriate tenant
4) find tenant ID in AAD >> Properties
5) switch to tenant in az cli via this command: `az login --tenant <tenantid>`

### Add alias for kubectl command
`alias k='kubectl'`

### Fix WSL DNS issues
I found a solution at (git@github.com:nicktho-msft/build-resilient-iaas-architecture.git)
