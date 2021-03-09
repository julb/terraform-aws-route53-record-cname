variable "zone_id" {
  type        = string
  description = "The ID of the hosted zone."
}

variable "name" {
  type        = string
  description = "The name of the record."
}

variable "ttl" {
  type        = number
  default     = 300
  description = "The TTL of the record."
}

variable "records" {
  description = "Records to associate to the DNS record."
  type        = list(string)
}