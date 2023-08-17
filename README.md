# module-ixnetwork-agent/google

## Description
Terraform module for IxNetwork agent deployment on Google Cloud Platform

## Deployment
This module creates a single instance having two network interfaces.

## Usage
```tf
module "Agent" {
	source  = "armdupre/module-ixnetwork-agemt/google"
	Eth0SubnetName = module.Vpc.PublicSubnet.name
	Eth0VpcNetworkName = module.Vpc.PublicVpcNetwork.name
	Eth1SubnetName = module.Vpc.PrivateSubnet.name
	Eth1VpcNetworkName = module.Vpc.PrivateVpcNetwork.name
}
```