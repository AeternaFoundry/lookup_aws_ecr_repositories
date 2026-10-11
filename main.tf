data "aws_ecr_repositories" "ecr_repositories_lookup" {
  for_each = var.ecr_repositories_lookup

  region = each.value.region
}

