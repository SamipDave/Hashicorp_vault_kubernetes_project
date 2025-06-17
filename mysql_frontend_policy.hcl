#access to read write secret data

path "secret/data/mysql" {
  capabilities = ["create", "read", "update", "delete", "list"]
}

path "secret/data/frontend" {
  capabilities = ["create", "read", "update", "delete", "list"]
}


#access to list secrets under path

path "secret/metadata/mysql" {
  capabilities = ["list"]
}

path "secret/metadata/fronend" {
  capabilities = ["list"]
}
