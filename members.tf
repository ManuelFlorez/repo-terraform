resource "github_membership" "membership_for_some_user" {
  for_each = set(var.members)
  username = each.key
  role     = "member"
}