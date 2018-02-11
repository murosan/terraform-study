resource "aws_security_group" "terraform_study_sg" {
  name        = "terraform_study_sg"
  description = "security group for studying terraform"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    self        = true
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    self        = true
  }

  tags {
    Name = "terraform-study-sg"
  }
}
