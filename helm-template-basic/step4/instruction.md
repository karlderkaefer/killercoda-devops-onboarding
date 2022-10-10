### Sprig function

Helm used go template behind the scenes and supports sprig function within templates.
This is often quite handy to reduce line of codes e.g. when you need to base64 encode strings.
Get to know some sprig template functions.

* [overview](http://masterminds.github.io/sprig/)
* [string function needed for this example](http://masterminds.github.io/sprig/strings.html)

One example of a simple chain of function is to quote a value

```
pizza: {{ .Values.pizza | quote }}
```

### Your Task

Fix the chart of step 4 `cd /app/step4`{{exec}}
Find suitable sprig function and chain them with values in `deplyoment.yaml`

* **addon**: should remove the prefix `nginx-` and write all chars in Capital Letters
* **triple**: should repeat `.Values.app.name` three times

see [helm docu for functions and pipelines](https://helm.sh/docs/chart_template_guide/functions_and_pipelines/)
**Hint** you can chain function with `|`

The helm template result should look like this:

```
apiVersion: apps/v1
kind: Deployment
metadata:
  name: nginx2
  labels:
    app: nginx-trace-addon
    addon: TRACE-ADDON
    triple: nginx-trace-addonnginx-trace-addonnginx-trace-addon
```

### Verify

Move to helm chart dir.
`cd /app/step4`{{exec}}

Check if you can render helm template correctly.
`helm template .`{{exec}}

Check if you have passed the task.
`helm conftest .`{{exec}}

See error and result log in
`cat /tmp/results.log`{{exec}}

