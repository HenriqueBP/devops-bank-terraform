variable "cluster_name" {
  description = "ECS Cluster Name"
  default     = "node-app"
}


variable "app_repository_name" {
  description = "ECR Repository Name"
  default     = "node-app"
}


variable "container_name" {
  description = "Container app name"
  default     = "node-app"
}


variable "desired_tasks" {
  description = "Number of containers desired to run app task"
  default     = 2
}

variable "min_tasks" {
  description = "Minimum"
  default     = 2
}

variable "max_tasks" {
  description = "Maximum"
  default     = 4
}

variable "cpu_to_scale_up" {
  description = "CPU % to Scale Up the number of containers"
  default     = 80
}

variable "cpu_to_scale_down" {
  description = "CPU % to Scale Down the number of containers"
  default     = 30
}


variable "desired_task_cpu" {
  description = "Desired CPU to run your tasks"
  default     = "256"
}


variable "desired_task_memory" {
  description = "Desired memory to run your tasks"
  default     = "512"
}


variable "alb_port" {
  description = "Origin Application Load Balancer Port"
  default     = "3000"
}


variable "container_port" {
  description = "Destination Application Load Balancer Port"
  default     = "3000"
}

variable "git_repository_owner" {
  description = "Github Repository Owner"
  default     = "HenriqueBP"
}


variable "git_repository_name" {
  description = "Project name on Github"
  default     = "devops-bank"
}


variable "git_repository_branch" {
  description = "Github Project Branch"
  default     = "master"
}

variable "github_token" {
  description = "Github Repository token"
}


variable "aws_region" {
  description = "AWS Region for the VPC"
  default     = "us-east-2"
}
