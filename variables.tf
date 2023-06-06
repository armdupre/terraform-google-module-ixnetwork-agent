variable "AppName" {
	default = "ixnetwork"
	type = string
}

variable "CustomImageFamilyName" {
	default = "ixia-virtual-test-appliance-9-30-0-209"
	description = "Group of images to which image belongs"
	type = string
}

variable "CustomImageProjectId" {
	default = "ixvm-261016"
	description = "Globally unique identifier for image source project"
	type = string
}

variable "Eth0PrivateIpAddress" {
	default = "10.0.10.11"
	type = string
}

variable "Eth0SubnetName" {
	type = string
}

variable "Eth0VpcNetworkName" {
	type = string
}

variable "Eth1PrivateIpAddress" {
	default = "10.0.2.15"
	type = string
}

variable "Eth1PrivateIpAliases" {
	default = "/28"
	type = string
}

variable "Eth1SubnetName" {
	type = string
}

variable "Eth1VpcNetworkName" {
	type = string
}

variable "InstanceId" {
	default = "agent-01"
	type = string
}

variable "MachineType" {
	default = "c2-standard-8"
	description = "Designation for set of resources available to VM"
	type = string
	validation {
		condition = can(regex("c2-standard-16", var.MachineType)) || can(regex("c2-standard-8", var.MachineType)) || can(regex("c2-standard-4", var.MachineType))
		error_message = "MachineType must be one of (c2-standard-16 | c2-standard-8 | c2-standard-4) types."
	}
}

variable "RegionName" {
	default = "us-central1"
	description = "Geographical location where resources can be hosted" 
	type = string
}

variable "UserEmailTag" {
	default = "terraform@example.com"
	description = "Email address tag of user creating the deployment"
	type = string
}

variable "UserLoginTag" {
	default = "terraform"
	description = "Login ID tag of user creating the deployment"
	type = string
}

variable "UserProjectTag" {
	default = "example"
	description = "Project tag of user creating the deployment"
	type = string
}

variable "ZoneName" {
	default = "us-central1-a"
	description = "Deployment area within a region"
	type = string
}