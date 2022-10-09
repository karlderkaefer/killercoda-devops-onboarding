package main

name = input.metadata.name

required_deployment_labels {
    input.metadata.labels["app"]
    input.metadata.labels["addon"]
    input.metadata.labels["triple"]
}

is_deployment {
    input.kind = "Deployment"
}

deny[msg] {
    is_deployment
    not required_deployment_labels
    msg = sprintf("deployment %s must have labels app, addon and triple", [name])
}

deny[msg] {
    is_deployment
    label := input.metadata.labels["app"]
    not label = "nginx-trace-addon"
    msg = sprintf("label %s must have value %s but have %s", ["app", "nginx-trace-addon", label])
}

deny[msg] {
    is_deployment
    label := input.metadata.labels["addon"]
    not label = "TRACE-ADDON"
    msg = sprintf("label %s must have value %s but have %s", ["addon", "TRACE-ADDON", label])
}

deny[msg] {
    is_deployment
    not input.metadata.labels["triple"] = "nginx-trace-addonnginx-trace-addonnginx-trace-addon"
    msg = sprintf("label %s must have value %s", ["triple", "nginx-trace-addonnginx-trace-addonnginx-trace-addon"])
}
