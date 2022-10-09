package main

name = input.metadata.name

is_deployment {
    input.kind = "Deployment"
}

required_labels {
	input.metadata.labels["env"]
	input.metadata.labels["team"]
}

deny[msg] {
    is_deployment
    not required_labels
    msg = sprintf("deployment %s must have labels env and team", [name])
}

deny[msg] {
    is_deployment
    label := input.metadata.labels["env"]
    not label == "prod"
    msg = sprintf("label %s must have value %s but found %s", ["env", "prod", label])
}

deny[msg] {
    is_deployment
    label := input.metadata.labels["team"]
    not label == "dev"
    msg = sprintf("label %s must have value %s but has value %s", ["team", "dev", label])
}
