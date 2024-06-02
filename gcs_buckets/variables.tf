variable "buckets" {
  description = "Map of bucket names to their configurations."
  type = map(object({
    name = string
    location      = string
    storage_class = string
  }))
}
