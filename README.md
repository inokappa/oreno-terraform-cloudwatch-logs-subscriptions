## oreno-terraform-cw-subscriptions

### required

- AWS access key
- AWS secret access key

### checked version

```sh
$ terraform version
Terraform v0.6.3
```

### terraform apply after...

- Create Kinesis Stream
- Create IAM role and IAM role policy for CloudWatch Logs Subscriptions

### terraform plan

```
terraform plan \
-var 'access_key=AK123456789123456789' \
-var 'secret_key=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx' 
```

### terraform apply

```
terraform apply \
-var 'access_key=AK123456789123456789' \
-var 'secret_key=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
```

### terraform destroy

```
terraform destroy \
-var 'access_key=AK123456789123456789' \
-var 'secret_key=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx' 
```
