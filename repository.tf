resource "github_repository" "repository" {
  name        = var.repository
  description = "Repositorio de terraform"
  visibility  = "public"
  auto_init   = true
}