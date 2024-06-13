resource "google_storage_bucket" "buckets" {
  for_each = var.buckets

  name                        = each.key
  location                    = var.region
  project                     = var.project
  storage_class               = each.value.storage_class
  public_access_prevention    = each.value.public_access_prevention
  uniform_bucket_level_access = each.value.uniform_bucket_level_access

  dynamic "lifecycle_rule" {
    for_each = each.value.lifecycle_rule
    content {
      condition {
        age = lifecycle_rule.value.age
      }
      action {
        type = lifecycle_rule.value.type
      }
    }
  }
}

