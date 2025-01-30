# Security Group for Load Balancer
resource "aws_security_group" "lb_sg" {
  name_prefix = "lb_sg"
  vpc_id      = aws_vpc.main.id
}

# Security Group for ECS Service
resource "aws_security_group" "main_sg" {
  name_prefix = "ecs_sg"
  vpc_id      = aws_vpc.main.id
}

resource "aws_security_group_rule" "allow_http" {
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.main_sg.id
}

# Allowing Load Balancer to access ECS Tasks
resource "aws_security_group_rule" "allow_lb_to_ecs" {
  type                     = "ingress"
  from_port                = 80
  to_port                  = 80
  protocol                 = "tcp"
  security_group_id        = aws_security_group.main_sg.id
  source_security_group_id = aws_security_group.lb_sg.id
}

