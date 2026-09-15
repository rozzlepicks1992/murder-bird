{{- define "murder-bird.name" -}}
{{- default .Chart.Name .Values.nameOverride -}}
{{- end -}}

{{- define "murder-bird.labels" -}}
app.kubernetes.io/name: {{ include "murder-bird.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
{{- end -}}

{{- define "murder-bird.selectorLabels" -}}
app.kubernetes.io/name: {{ include "murder-bird.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
