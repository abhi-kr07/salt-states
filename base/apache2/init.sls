install_apache2:
  pkg.installed:
    - name: apache2

index_html:
  file.managed:
    - name: /var/www/html/index.html
    - user: root
    - group: root
    - mode: 644
    - source: salt://apache2/templates/index.html
    - require:
      - pkg: install_apache2

apache2_service:
  service.running:
    - name: apache2
    - enable: True
    - require:
      - pkg: install_apache2

