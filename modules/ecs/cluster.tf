resource "aws_ecs_cluster" "cluster" {
  name = "${var.cluster_name}"
}

resource "aws_cloudwatch_log_group" "node-app" {
  name = "node-app"

 tags = {
   Application = "${var.cluster_name}"
  }
}
