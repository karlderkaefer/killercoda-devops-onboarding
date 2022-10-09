package main

name = input.metadata.name

is_deployment {
	input.kind = "Deployment"
}

deny[msg] {
  is_deployment
  not name == "fancy"
  msg = sprintf("your deployment should have name %s and not %s ", ["fancy", name])
}
