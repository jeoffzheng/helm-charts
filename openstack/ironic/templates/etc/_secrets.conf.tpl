[DEFAULT]
{{- include "ini_sections.default_transport_url" . }}
{{- include "ini_sections.oslo_messaging_rabbit" .}}

[console]
url_auth_digest_secret = {{required "A valid .Values.console.secret required!" .Values.console.secret}}

[database]
connection = {{ include "utils.db_url" . }}

[keystone_authtoken]
username = {{ .Values.global.ironicServiceUser }}
password = {{ required ".Values.global.ironicServicePassword is missing" .Values.global.ironicServicePassword | include "resolve_secret" }}

[service_catalog]
username = {{ .Values.global.ironicServiceUser }}
password = {{ required ".Values.global.ironicServicePassword is missing" .Values.global.ironicServicePassword | include "resolve_secret" }}

[glance]
{{- if .Values.swift_store_multi_tenant }}
swift_store_multi_tenant = True
{{- else}}
    {{- if .Values.swift_multi_tenant }}
swift_store_multiple_containers_seed = 32
    {{- end }}
swift_temp_url_key = {{required "A valid .Values.swift_tempurl required!" .Values.swift_tempurl }}
swift_account = {{required "A valid .Values.swift_account required!" .Values.swift_account }}
{{- end }}

{{ include "ini_sections.audit_middleware_notifications" . }}
