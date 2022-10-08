### Install helm

Check [Helm documentation](https://helm.sh/docs/intro/install/) to see how to install helm.
In this scenario it's already done for you.

Install Helm plugin which will be used to verify scenarios.
```{{ exec }}
helm plugin install https://github.com/instrumenta/helm-conftest
```

### Verify installation

check helm version `helm version`{{exec}}

