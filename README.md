# Terraform Demo
This simple demo explains the use of the different files types in Terraform, and how
to deploy infrastructure all with terraform files. (Infrastructure as Code)

### Terraform Commands
```terraform -help```; lists all the terraform commands and help

```terraform init```; initialises your terraform repo, eg: if you use different 
providers terraform needs to scan for them and prepare the plugins for them

```terraform plan```; this command tells you what terraform will do, sort of like git, but each line is a setting for infrastructure on a CSP.

`terraform apply`; this command executes the terraform code and pushes it. You need to double confirm with a "yes" later on.

### Directory/Files
`main.tf` - where the main IaC code belongs, and what you change and apply eventually becomes infrastructure from code.

`outputs.tf` - being able to retrieve outputs variables and display them. i wonder if you can do anything with this. It's sort of like a easy-free use into AWS's API to get metadata of your infrasturcture after they're deployed.

`variables.tf` - the variables folder gives you a single file where you can store common variables required, like the keypair name so you don't have to keep on typing it for numerous files/resources.

### Deploying
Mac:
```
$ export AWS_ACCESS_KEY_ID=(your access key id)
$ export AWS_SECRET_ACCESS_KEY=(your secret access key)
```

Windows:
```
$ set AWS_ACCESS_KEY_ID=(your access key id)
$ set AWS_SECRET_ACCESS_KEY=(your secret access key)
```

>Source: https://blog.gruntwork.io/a-crash-course-on-terraform-5add0d9ef9b4# terraform_demo
