output "linux_public_ip"{
    value = aws_instance.linux.public_ip
    description = "Muestro la ip publica asignada a la instancia"
}