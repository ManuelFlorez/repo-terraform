resource "github_membership" "membership_for_some_user" {
  for_each = toset(var.members)
  username = each.key
  role     = "member"
}