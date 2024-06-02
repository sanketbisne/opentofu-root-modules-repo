variable "buckets" {
  description = "Map of bucket names to their configurations."
  type = map(object({
    location      = string
    storage_class = string
  }))
}
