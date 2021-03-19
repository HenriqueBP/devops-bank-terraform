output "repository_url" {
  value = "${aws_ecr_repository.node-app.repository_url}"
}

output "service_name" {
  value = "${aws_ecs_service.node-app.name}"
}

output "alb" {
  value = "${aws_alb.app_alb.dns_name}"
}
