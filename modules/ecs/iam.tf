
resource "aws_iam_role" "ecs_execution_role" {
  name               = "${var.cluster_name}-ecs_task_role"
  assume_role_policy = "${file("${path.module}/policies/ecs-task-execution-role.json")}"
}


resource "aws_iam_role_policy" "ecs_execution_role_policy" {
  name   = "${var.cluster_name}_role_policy"
  policy = "${file("${path.module}/policies/ecs-execution-role-policy.json")}"
  role   = "${aws_iam_role.ecs_execution_role.id}"
}
