package main

name = input.metadata.name
chart = input.metadata.annotations.chart
manifest = input[_]

is_deployment {
    input.kind = "Deployment"
}

deny[msg] {
    is_deployment
    name = "nginx"
    chart != "frontend"
    msg = sprintf("Expected alias frontend for step 3 chart but found %s", [chart])
}

deny[msg] {
    is_deployment
    name = "nginx2"
    chart != "backend"
    msg = sprintf("Expected alias backend for step 4 chart but found %s", [chart])
}

deny[msg] {
    is_deployment
    name = "nginx2"
    chart != "backend"
    msg = sprintf("Expected alias backend for step 4 chart but found %s", [chart])
}
