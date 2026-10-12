output "mcp_servers_id" {
  description = "Map of id values across all mcp_servers, keyed the same as var.mcp_servers except keys with no id are omitted"
  value       = { for k, v in snowflake_mcp_server.mcp_servers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "mcp_servers_comment" {
  description = "Map of comment values across all mcp_servers, keyed the same as var.mcp_servers except keys with no comment are omitted"
  value       = { for k, v in snowflake_mcp_server.mcp_servers : k => v.comment if v.comment != null && length(v.comment) > 0 }
}
output "mcp_servers_database" {
  description = "Map of database values across all mcp_servers, keyed the same as var.mcp_servers except keys with no database are omitted"
  value       = { for k, v in snowflake_mcp_server.mcp_servers : k => v.database if v.database != null && length(v.database) > 0 }
}
output "mcp_servers_describe_output" {
  description = "Map of describe_output values across all mcp_servers, keyed the same as var.mcp_servers except keys with no describe_output are omitted"
  value       = { for k, v in snowflake_mcp_server.mcp_servers : k => v.describe_output if v.describe_output != null && length(v.describe_output) > 0 }
}
output "mcp_servers_fully_qualified_name" {
  description = "Map of fully_qualified_name values across all mcp_servers, keyed the same as var.mcp_servers except keys with no fully_qualified_name are omitted"
  value       = { for k, v in snowflake_mcp_server.mcp_servers : k => v.fully_qualified_name if v.fully_qualified_name != null && length(v.fully_qualified_name) > 0 }
}
output "mcp_servers_name" {
  description = "Map of name values across all mcp_servers, keyed the same as var.mcp_servers except keys with no name are omitted"
  value       = { for k, v in snowflake_mcp_server.mcp_servers : k => v.name if v.name != null && length(v.name) > 0 }
}
output "mcp_servers_schema" {
  description = "Map of schema values across all mcp_servers, keyed the same as var.mcp_servers except keys with no schema are omitted"
  value       = { for k, v in snowflake_mcp_server.mcp_servers : k => v.schema if v.schema != null && length(v.schema) > 0 }
}
output "mcp_servers_show_output" {
  description = "Map of show_output values across all mcp_servers, keyed the same as var.mcp_servers except keys with no show_output are omitted"
  value       = { for k, v in snowflake_mcp_server.mcp_servers : k => v.show_output if v.show_output != null && length(v.show_output) > 0 }
}
output "mcp_servers_specification" {
  description = "Map of specification values across all mcp_servers, keyed the same as var.mcp_servers except keys with no specification are omitted"
  value       = { for k, v in snowflake_mcp_server.mcp_servers : k => v.specification if v.specification != null && length(v.specification) > 0 }
}

