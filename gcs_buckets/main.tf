resource "google_storage_bucket" "example" {
  for_each = var.buckets

  name         = each.value.name
  location     = each.value.location
  storage_class = each.value.storage_class

  default_event_based_hold    = false
  enable_object_retention     = false
  force_destroy               = false
  public_access_prevention    = "enforced"
  requester_pays              = false
  uniform_bucket_level_access = true

  soft_delete_policy {
    # Define your soft delete policy here if needed
  }
}
