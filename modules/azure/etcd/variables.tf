// Location is the Azure Location (East US, West US, etc)
variable "location" {
  type = "string"
}

variable "resource_group_name" {
  type = "string"
}

// VM Size name
variable "vm_size" {
  type = "string"
}

// Storage account type
variable "storage_account_type" {
  type = "string"
}

// Count of etcd nodes to be created.
variable "etcd_count" {
  type = "string"
}

// The base DNS domain of the cluster.
// Example: `azure.dev.coreos.systems`
variable "base_domain" {
  type = "string"
}

// The name of the cluster.
variable "cluster_name" {
  type = "string"
}

variable "public_ssh_key" {
  type = "string"
}

variable "network_interface_ids" {
  type = "list"
}

variable "versions" {
  description = "(internal) Versions of the components to use"
  type        = "map"
}

variable "cl_channel" {
  type = "string"
}

variable "const_internal_node_names" {
  type        = "list"
  default     = ["etcd-0", "etcd-1", "etcd-2", "etcd-3", "etcd-4"]
  description = "(internal) The list of hostnames assigned to etcd member nodes."
}

variable "tls_enabled" {
  default = false
}

variable "tls_ca_crt_pem" {
  default = ""
}

variable "tls_client_key_pem" {
  default = ""
}

variable "tls_client_crt_pem" {
  default = ""
}

variable "tls_server_key_pem" {
  default = ""
}

variable "tls_server_crt_pem" {
  default = ""
}

variable "tls_peer_key_pem" {
  default = ""
}

variable "tls_peer_crt_pem" {
  default = ""
}

variable "container_image" {
  type = "string"
}
