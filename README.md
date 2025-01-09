# Terraform-Basics
This repository contains exercises and projects for mastering Infrastructure as Code (IaC) principles using Terraform

# Principle commands
Terraform read automatically access key for aws, accessing .aws file.
To set access id or key:
```
aws configure
````

Or edit aws credential file :
```
nano ~/.aws/credentials 
export AWS_PROFILE=myprofile
```


To init terraform file:
```
terraform init
```

To preview the modification :
```
terraform plan
```

To apply the modification :
```
terraform apply
```

If you want to put variables dynamic :
```
terraform apply -var "bucket_name=heheheheeeeee"
```

To see the details of results :
```
terraform show
```

To eliminate the resources :
```
terraform destroy
```

# Statefile
Terraform has a state file so that we can track, plan or share with colleagues. There are several commands for manage state file `terraform.tfstate`

To list states :
```
terraform state list
```

If you want to see the detail of resource :
```
terraform state show <resource>
```

If you change a name of resource and do apply, it will create a new resource but it's unnecessary. In this case, we need to modify Logical Path manually. To move the route of resource state :
```
terraform state mv aws_s3_bucket.example aws_s3_bucket.new_example
```

To remove resource from state file :
```
terraform state rm aws_s3_bucket.example
```

To update state file from real infra :
```
terraform refresh
```

**Tip** : you can state lock using remote backend (S3 + DynamoDB). It's necessary to avoid conflict the state file

# Structure recommanded : Using Module
Using modules is good for structure terraform code. For example :
```
project/
├── main.tf
├── modules/
│   └── s3/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
```
And also, Terraform Registry provide some community module such as "terraform-aws-modules/vpc/aws"