resource "snowflake_mcp_server" "mcp_servers" {
  for_each = var.mcp_servers

  database      = each.value.database
  name          = each.value.name
  schema        = each.value.schema
  specification = each.value.specification
  comment       = each.value.comment

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

