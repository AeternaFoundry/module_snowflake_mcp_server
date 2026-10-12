variable "mcp_servers" {
  description = <<EOT
Map of mcp_servers, attributes below
Required:
    - database
    - name
    - schema
    - specification
Optional:
    - comment
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    database      = string
    name          = string
    schema        = string
    specification = string
    comment       = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
}

