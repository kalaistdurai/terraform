output "public_instance_ip" {
    value = "${aws_instance.example.public_ip}"
}

output "private_instance_ip" {
    value = "${aws_instance.example.private_ip}"
}
