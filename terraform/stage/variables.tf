variable "cloud_id" {
  description = "Cloud ID"
}

variable "folder_id" {
  description = "Folder ID"
}

variable "zone" {
  default     = "ru-central1-a"
  description = "Zone"
}

variable "image_id" {
  description = "Image ID"
}

variable "subnet_id" {
  description = "Subnet ID"
}

variable "public_key_path" {
  description = "Path to the public key used for ssh access"
}

variable "private_key_path" {
  description = "Path to the private key used for ssh access"
}

variable "service_account_key_file" {
  description = "key .json"
}

variable "app_node_count" {
  default     = "1"
  description = "Count of app nodes"
}

variable "db_node_count" {
  default     = "1"
  description = "Count of db nodes"
}

variable "app_disk_image" {
  description = "Disk image for reddit app"
  default     = "reddit-app-base-10-04-2023"
}

variable "db_disk_image" {
  description = "Disk image for reddit db"
  default     = "reddit-db-base-10-04-2023"
}

variable "node_type" {
  type        = string
  default     = ""
  description = "Node type. Example: -prod or -dev"
}