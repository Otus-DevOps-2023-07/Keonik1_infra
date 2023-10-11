variable "public_key_path" {
  description = "Path to the public key used for ssh access"
}

variable "private_key_path" {
  description = "Path to the private key used for ssh access"
}

variable "db_node_count" {
  default     = "1"
  description = "Count of db nodes"
}

variable "db_disk_image" {
  description = "Disk image for reddit db"
  default     = "reddit-db-base-10-04-2023"
}

variable "subnet_id" {
  description = "Subnets for modules"
}

variable "node_type" {
  type        = string
  default     = ""
  description = "Node type. Example: -prod or -dev"
}
