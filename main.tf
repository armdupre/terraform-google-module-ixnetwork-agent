resource "google_compute_address" "Eth0PublicIpAddress" {
	name = local.Eth0PublicIpAddressName
	region = local.RegionName
	network_tier = "PREMIUM"
	address_type = "EXTERNAL"
}

resource "google_compute_instance" "Instance" {
	name = local.InstanceName
	zone = local.ZoneName
	machine_type = local.MachineType
	boot_disk {
		device_name = "persistent-disk-0"
		auto_delete = true
		initialize_params {
			image = data.google_compute_image.Image.id
		}
	}
	allow_stopping_for_update = true
	enable_display = true
	network_interface {
		network = data.google_compute_network.Eth0VpcNetwork.self_link
		network_ip = local.Eth0PrivateIpAddress
		subnetwork = data.google_compute_subnetwork.Eth0Subnet.self_link
		access_config {
			nat_ip = google_compute_address.Eth0PublicIpAddress.address
			network_tier = "PREMIUM"
		}
	}
	network_interface {
		network = data.google_compute_network.Eth1VpcNetwork.self_link
		network_ip = local.Eth1PrivateIpAddress
		subnetwork = data.google_compute_subnetwork.Eth1Subnet.self_link
		alias_ip_range {
			ip_cidr_range = local.Eth1PrivateIpAliases
		}
	}
	metadata = {
		Owner = local.OwnerTag
		Project = local.ProjectTag
		serial-port-enable = local.SerialPortEnable
	}
	tags = local.NetworkTargetTags
	labels = {
		owner = replace(replace(local.OwnerTag, ".", "-"), "@", "-")
		project = lower(local.ProjectTag)
	}
}