resource "vault_policy" "admin" {
  name = "TERRAFORM-admin"

  policy = "${file("./policy-ADMIN.hcl")}"
}

resource "vault_policy" "provisioner" {
  name = "TERRAFORM-provisioner"

  policy = "${file("./policy-PROVISIONER.hcl")}"
}

resource "vault_policy" "dev-team" {
  name = "TERRAFORM-dev-team"

  policy = "${file("./policy-DEV-TEAM.hcl")}"
}
