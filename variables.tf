variable "ecr_repositories_lookup" {
  description = <<EOT
Map of ecr_repositories_lookup, attributes below
Optional:
    - region
EOT

  type = map(object({
    region = optional(string)
  }))
}

