output "ecr_repositories_lookup_id" {
  description = "Map of id values across all ecr_repositories_lookup, keyed the same as var.ecr_repositories_lookup"
  value       = { for k, v in data.aws_ecr_repositories.ecr_repositories_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ecr_repositories_lookup_names" {
  description = "Map of names values across all ecr_repositories_lookup, keyed the same as var.ecr_repositories_lookup"
  value       = { for k, v in data.aws_ecr_repositories.ecr_repositories_lookup : k => v.names if v.names != null && length(v.names) > 0 }
}
output "ecr_repositories_lookup_region" {
  description = "Map of region values across all ecr_repositories_lookup, keyed the same as var.ecr_repositories_lookup"
  value       = { for k, v in data.aws_ecr_repositories.ecr_repositories_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}

