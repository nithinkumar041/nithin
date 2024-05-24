output "vpcname" {
  value = aws_vpc.myvpc.tags.Name
}

output "subnet" {
  value = aws_subnet.publicsubnet.id
}