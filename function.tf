data "archive_file" "zip" {
  type        = "zip"
  source_file = "test_lambda.py"
  output_path = "test_lambda.zip"
}


resource "aws_iam_role" "iam_for_lambda" {
  name = "iam_for_lambda"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

resource "aws_lambda_function" "test_lambda" {
  function_name = "test_lambda"

  filename         = "${data.archive_file.zip.output_path}"
  role          = aws_iam_role.iam_for_lambda.arn
  handler       = "test_lambda.lambda_handler"

  # The filebase64sha256() function is available in Terraform 0.11.12 and later
  # For Terraform 0.11.11 and earlier, use the base64sha256() function and the file() function:
  # source_code_hash = "${base64sha256(file("lambda_function_payload.zip"))}"
  source_code_hash = "${data.archive_file.zip.output_base62856}"  function_name = "lambda_function_name"

  runtime = "pythom3.6"

  environment {
    variables = {
      foo = "bar"
    }
  }
}