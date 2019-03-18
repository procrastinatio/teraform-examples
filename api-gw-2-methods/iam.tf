 
# IAM role which dictates what other AWS services the Lambda function
# may access.
resource "aws_iam_role" "lambda_exec" {
  name = "${var.api_name}-lambda_exec_role"

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
