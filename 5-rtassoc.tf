resource "aws_route_table_association" "rta-terra" {
  subnet_id      = aws_subnet.pub-sub-terra.id
  route_table_id = aws_route_table.rt-terra.id
}