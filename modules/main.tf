module "frontend" {
  source = "../exercise-04a"

  name              = "frontend"
  server_text       = "Hello from frontend"
  instance_type     = "t2.micro"
  is_public_service = true
  ami_id = "ami-87fe06fd"
}

module "backend" {
  source = "../exercise-04a"

  name              = "backend"
  server_text       = "Hello from backend"
  instance_type     = "t2.micro"
  is_public_service = false
  ami_id = "ami-87fe06fd"
}

output "frontend_dns_name" {
  value = "${module.frontend.elb_dns_name}"
}

output "backend_dns_name" {
  value = "${module.backend.elb_dns_name}"
}
