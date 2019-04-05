# ENDPOINT GOVERNING POLICIES

resource "vault_egp_policy" "businesshours" {
  name = "TERRAFORM-egp-businesshours"
  paths = ["*"]
  enforcement_level = "hard-mandatory"

  policy = "${file("./policy-egp-BUSINESSHOURS.sentinel")}"
}

resource "vault_egp_policy" "cidr" {
  name = "TERRAFORM-egp-cidr"
  paths = ["*"]
  enforcement_level = "soft-mandatory"

  policy = "${file("./policy-egp-CIDR.sentinel")}"
}

# ROLE GOVERNING POLICIES

resource "vault_rgp_policy" "userrestriction" {
  name = "TERRAFORM-user-restriction"
  enforcement_level = "hard-mandatory"

  policy = "${file("./policy-rgp-USERRESTRICTION.sentinel")}"
}
