variable "project_id" {
  type = string
}

variable "zone" {
  type = string
}

variable "machine_type" {
  type = string
}

variable "instance_names" {
  type = set(string)
}
