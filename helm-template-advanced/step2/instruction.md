### Create Values Files

First create a file values.yaml in chart directory
`touch /app/values.yaml`{{exec}}

The deployment name should be `fancy`

### Verify

Check if you can render helm template correctly.
`helm template /app`{{exec}}

Check if you have passed the task
`helm conftest /app`{{exec}}

See result log
`cat /tmp/results.log`{{exec}}

