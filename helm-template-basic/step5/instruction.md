### Umbrella Chart

Typically, you have one application per helm chart. 
[Umbrella Chart](https://v2.helm.sh/docs/developing_charts/#complex-charts-with-many-dependencies) can be used to compose multiple charts.
In such cases, a single umbrella chart may have multiple subcharts, each of which functions as a piece of the whole.

### Add a chart dependency

Fix the chart of step 5 `cd /app/step5`{{exec}}

Chart dependencies can be added in `Chart.yaml` within key `dependencies`.
The chart of `step2` is already added.
 * Add the other two previously created charts `step3` and `step4` as dependencies.
 * Change the alias of step3 chart to `frontend`
 * Change the alias of step4 chart to `backend`

you need to initially build dependencies after your added them to `Chart.yaml`.
`helm dep build`{{exec}}
You can verify full template with
`helm template .`{{exec}}

Now modify the `app.name` of chart `step4` in `/app/step5/values.yaml`.
Note when reference the chart you need to use the defined alias `backend`.

```bash
cat <<EOF > /app/step5/values.yaml
backend:
  app:
    name: umbrella
EOF
```{{exec}}


### Verify

Move to helm chart dir.
`cd /app/step5`{{exec}}

Check if you can render helm template correctly.
`helm template .`{{exec}}

Check if you have passed the task.
`helm conftest .`{{exec}}

See error and result log in
`cat /tmp/results.log`{{exec}}

