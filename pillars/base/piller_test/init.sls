{% if grains['os'] == 'Ubuntu' %}
apache: apache2
git: git
role: webserver
{% elif grains['os'] == 'RedHat' %}
apache: httpd
git: git-core
role: webserverrrrrr
{% endif %}