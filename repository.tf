resource "github_repository" "repository" {
  name        = var.repositorio
  description = "Repositorio de terraform"
  visibility  = "public"
  auto_init   = true
}