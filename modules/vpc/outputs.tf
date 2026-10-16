output "vpc_id" {
  description = "vpc iD"
  value = aws_vpc.this.id
}
## subnet ids
output "public_subnet_ids" {
  description = "Public subnet IDs"
  value       = [for subnet in aws_subnet.public : subnet.id]
#   depends_on = [aws_subnet.public]
  depends_on = [aws_route_table_association.public]
}