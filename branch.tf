resource "github_branch" "dev" {
  repository = github_repository.repository.name
  branch     = "dev"
}

resource "github_branch" "qa" {
  repository = github_repository.repository.name
  branch     = "qa"
}

resource "github_branch_protection" "branch_main" {
  repository_id = github_repository.repository.node_id

  required_pull_request_reviews {
    dismiss_stale_reviews  = true
    restrict_dismissals    = true
    dismissal_restrictions = [
      github_team.approvers_team.node_id,
    ]
  }

  push_restrictions = [
    # data.github_user.example.node_id,
    # limited to a list of one type of restriction (user, team, app)
    # github_team.example.node_id
    github_team.developer_team.node_id
  ]

}