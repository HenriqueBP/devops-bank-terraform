resource "aws_ecr_repository" "node-app" {
  name = "${var.app_repository_name}"
}
