resource "aws_s3_bucket" "logs_bucket" {
  bucket = "${var.env}-logs-bucket"

  tags = {
    Name = "${var.env}-logs-bucket"
    Environment = var.env
  }
}

resource "aws_cloudwatch_log_group" "application_logs" {
  name              = "/${var.env}/application"
  retention_in_days = 14

  tags = {
    Environment = var.env
  }
}
