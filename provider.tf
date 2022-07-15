resource "github_repository" "repo" {
  name        = var.repositorio
  description = "Repositorio de terraform"
  visibility  = "public"
  auto_init   = true
}