# iac_azure_event_hub

Terraform script to create an eventhub namespace and eventhub entity in Azure.

### Pre-requisites:

* <b> Azure account </b>
* <b> Terraform package to be installed </b>


### How to run the terraform script?

* cd into the repository and run <b>terraform init</b> command

```
$ cd iac_azure_event_hub/
$ terraform init

```

* Plan the infrastructure using <b>terraform plan</b>

```
$ terraform plan --var-file=dev.tfvars 
```

* Run <b>terraform apply</b> command to apply the changes:

```
$ terraform apply --var-file=dev.tfvars 

```

### How to customize the configurations ?

Go to <b>dev.tfvars</b> and modify the variables


### How to destroy the infrastructure ?

```
$ terraform destroy --var-file=dev.tfvars 
```


get the list of the ipds to be allowed from the user 

x = [ 10.0.00/23,10.0.00/23,10.0.00/23,10.0.00/23]

for each element, I have to define one ip rule block

for eaach in x :

    ip_rule {
      ip_mask = "x"
      action = "Allow"
    }
