resource "github_team" "developer_team" {
  name        = "developer"
  description = "Team developer"
}

resource "github_team" "approvers_team" {
  name        = "approvers"
  description = "Team approvers"
}

resource "github_team_repository" "team_repository_developer" {
  team_id    = github_team.developer_team.id
  repository = github_repository.repository.name
  permission = "pull"
}

resource "github_team_repository" "team_repository_approvers" {
  team_id    = github_team.approvers_team.id
  repository = github_repository.repository.name
  permission = "push"
}

resource "github_team_members" "developer_team_members" {
  team_id  = github_team.developer_team.id

  members {
    for_each = toset(var.developers)
    username = each.key
    role     = "member"
  }
  
}