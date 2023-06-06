locals {
	AppName = var.AppName
	CustomImageProjectId = var.CustomImageProjectId
	CustomImageFamilyName = var.CustomImageFamilyName
	Eth0PrivateIpAddress = var.Eth0PrivateIpAddress
	Eth0PublicIpAddressName = "${local.Preamble}-eth0-ip-addr"
	Eth0SubnetName = var.Eth0SubnetName
	Eth0VpcNetworkName = var.Eth0VpcNetworkName
	Eth1PrivateIpAddress = var.Eth1PrivateIpAddress
	Eth1PrivateIpAliases = var.Eth1PrivateIpAliases
	Eth1SubnetName = var.Eth1SubnetName
	Eth1VpcNetworkName = var.Eth1VpcNetworkName
	InstanceId = var.InstanceId
	InstanceName = "${local.Preamble}-instance"
	MachineType = var.MachineType
	NetworkTargetTags = [
		"${local.AppName}-agent"
	]
	Preamble = "${local.UserLoginTag}-${local.UserProjectTag}-${local.AppName}-${local.InstanceId}"
	SerialPortEnable = true
	RegionName = var.RegionName
	UserEmailTag = var.UserEmailTag
	UserLoginTag = var.UserLoginTag
	UserProjectTag = var.UserProjectTag
	ZoneName = var.ZoneName
}