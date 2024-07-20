install_apache2:
    pkg.installed:
        - pkg:
            - httpd
    
index_html:
    file.managed:
        - name: /var/www/html/index.html
        - user: apache2
        - group: apache2
        - mode: 644
        - source: salt://apache2/templates/index.html

apache2_service:
    service.running:
        - name: httpd
        - enable: True
