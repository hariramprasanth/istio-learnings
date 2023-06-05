#!/bin/bash
vare=$(cat <<-END
imagePullPolicy: Always \
\n          readinessProbe:\
\n            httpGet:\
\n              path: /health\
\n              port: 8080\
\n          livenessProbe:\
\n            httpGet:\
\n              path: /health\
\n              port: 8080\
END
)
echo "$vare"

sed 's|'imagePullPolicy:\ Always'|'"$vare"'|' old-k8.yaml > new-k8.yaml