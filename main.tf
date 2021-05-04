resource "random_id" "random" {
  byte_length = 8
}

data "vault_generic_secret" "default" {
  path = "secret/${random_id.random.id}"
}
