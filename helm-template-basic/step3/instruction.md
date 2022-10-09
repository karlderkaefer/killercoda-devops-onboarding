### Loops

Fix the chart of step 3 `cd /app/step3`{{exec}} 

The goal is to add all labels defined in `customLabels` in `values.yaml` by using a loop.

The result helm template should look like this:
```yaml
---
apiVersion: apps/v1
kind: Deployment
metadata:
  name: nginx
  labels:
    env: prod
    team: dev
```

You can read more about control structures in [helm docu](https://helm.sh/docs/chart_template_guide/control_structures/#looping-with-the-range-action)

You can loop over a list of values
```yaml
toppings: |-
  {{- range .Values.pizzaToppings }}
  - {{ . | title | quote }}
  {{- end }}
```
You can loop over a key-value map by
```yaml
toppings: |-
  {{- range .Values.pizzaToppings }}
  {{ .name }}: {{ .value }}
  {{- end }}
```
If you are inside the loop you are in the scope of the object. You have access to attributes with `.`{{}}.
But in order to reference other values, you need to prepend `$`{{}} e.g. `$.Values.otherValue`{{}}

### Verify

Move to helm chart dir.
`cd /app/step3`{{exec}}

Check if you can render helm template correctly.
`helm template .`{{exec}}

Check if you have passed the task.
`helm conftest .`{{exec}}

See error and result log in
`cat /tmp/results.log`{{exec}}

