#!/bin/bash
terraforming ec2 --tfstate > terraform.tfstate
terraforming alb --tfstate --merge=terraform.tfstate --overwrite
terraforming asg --tfstate --merge=terraform.tfstate --overwrite
terraforming cwa --tfstate --merge=terraform.tfstate --overwrite
terraforming dbpg --tfstate --merge=terraform.tfstate --overwrite
terraforming dbsg --tfstate --merge=terraform.tfstate --overwrite
terraforming dbsn --tfstate --merge=terraform.tfstate --overwrite
terraforming ecc --tfstate --merge=terraform.tfstate --overwrite
terraforming ecsn --tfstate --merge=terraform.tfstate --overwrite
terraforming efs --tfstate --merge=terraform.tfstate --overwrite
terraforming eip --tfstate --merge=terraform.tfstate --overwrite
terraforming elb --tfstate --merge=terraform.tfstate --overwrite
terraforming help --tfstate --merge=terraform.tfstate --overwrite
terraforming iamg --tfstate --merge=terraform.tfstate --overwrite
terraforming iamgm --tfstate --merge=terraform.tfstate --overwrite
terraforming iamgp --tfstate --merge=terraform.tfstate --overwrite
terraforming iamip --tfstate --merge=terraform.tfstate --overwrite
terraforming iamp --tfstate --merge=terraform.tfstate --overwrite
terraforming iampa --tfstate --merge=terraform.tfstate --overwrite
terraforming iamr --tfstate --merge=terraform.tfstate --overwrite
terraforming iamrp --tfstate --merge=terraform.tfstate --overwrite
terraforming iamu --tfstate --merge=terraform.tfstate --overwrite
terraforming iamup --tfstate --merge=terraform.tfstate --overwrite
terraforming igw --tfstate --merge=terraform.tfstate --overwrite
terraforming kmsa --tfstate --merge=terraform.tfstate --overwrite
terraforming kmsk --tfstate --merge=terraform.tfstate --overwrite
terraforming lc --tfstate --merge=terraform.tfstate --overwrite
terraforming nacl --tfstate --merge=terraform.tfstate --overwrite
terraforming nat --tfstate --merge=terraform.tfstate --overwrite
terraforming nif --tfstate --merge=terraform.tfstate --overwrite
terraforming r53r --tfstate --merge=terraform.tfstate --overwrite
terraforming r53z --tfstate --merge=terraform.tfstate --overwrite
terraforming rds --tfstate --merge=terraform.tfstate --overwrite
terraforming rs --tfstate --merge=terraform.tfstate --overwrite
terraforming rt --tfstate --merge=terraform.tfstate --overwrite
terraforming rta --tfstate --merge=terraform.tfstate --overwrite
terraforming s3 --tfstate --merge=terraform.tfstate --overwrite
terraforming sg --tfstate --merge=terraform.tfstate --overwrite
terraforming sn --tfstate --merge=terraform.tfstate --overwrite
terraforming snss --tfstate --merge=terraform.tfstate --overwrite
terraforming snst --tfstate --merge=terraform.tfstate --overwrite
terraforming sqs --tfstate --merge=terraform.tfstate --overwrite
terraforming vgw --tfstate --merge=terraform.tfstate --overwrite
terraforming vpc --tfstate --merge=terraform.tfstate --overwrite
