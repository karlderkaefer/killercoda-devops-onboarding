### Create Values Files

First create a file values.yaml in chart directory.
`touch /app/values.yaml`{{exec}}

Add the key `name` with the value `fancy` to created file.

You can read more in [official helm documentation](https://helm.sh/docs/chart_template_guide/values_files/)

### Verify

Move to helm chart dir.
`cd /app`

Check if you can render helm template correctly.
`helm template .`{{exec}}

Check if you have passed the task.
`helm conftest .`{{exec}}

See error and result log in
`cat /tmp/results.log`{{exec}}

