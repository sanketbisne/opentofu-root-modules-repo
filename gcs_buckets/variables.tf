variable "project" {
  description = "The Google Cloud project ID"
  type        = string
}

variable "region" {
  description = "The region for the Google Cloud resources"
  type        = string
}

variable "buckets" {
  description = "Map of Google Cloud Storage buckets to create"
  type        = map(object({
    storage_class               = string
    public_access_prevention    = string
    uniform_bucket_level_access = bool
    lifecycle_rule              = list(object({
      age  = number
      type = string
    }))
  }))
  default     = {}
}
