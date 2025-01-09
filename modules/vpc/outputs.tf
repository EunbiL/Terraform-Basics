output "public_subnet_id" {
    value = aws_subnet.public_subnet.id
    description = "The id of public subnet"
}

output "private_subnet_id" {
    value = aws_subnet.private_subnet.id
    description = "The id of private subnet"
}