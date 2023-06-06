output "Image" {
	value = {
		"family" : data.google_compute_image.Image.family
		"name" : data.google_compute_image.Image.name
		"project" : data.google_compute_image.Image.project
	}
}