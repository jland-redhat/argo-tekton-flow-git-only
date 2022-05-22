#!/usr/bin/env bash
echo "Patching Argo Application..."
set -x
oc patch Application/$(params.ARGO_APP_NAME) -p '{"spec":{"source":{"helm":{"parameters":[{"name":"image","value":"$(params.IMAGE)" },
      {"name":"app.name","value":"$(params.APP_NAME)" }]}}}}' --type merge -n $(params.ARGO_NAMESPACE)