{% if pillar['role'] == 'webserver' %}
apache:
  pkg.installed:
    - name: {{ pillar['apache'] }}

git:
  pkg.installed:
    - name: {{ pillar['git'] }}

{% elif pillar['role'] == 'database' %}
apache:
  pkg.installed:
    - name: {{ pillar['apache'] }}

git:
  pkg.installed:
    - name: {{ pillar['git'] }}

{% else %}
handle_missing_role:
  file.managed:
    - name: /tmp/role_check.log
    - contents: "Role not found in pillar."
    - user: root
    - group: root
    - mode: 644
{% endif %}
