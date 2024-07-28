motd_file:
  file.managed:
    - name: /etc/salt/motd
    - source: salt://motd/file/motd.txt
    - user: root
    - group: root
    - mode: 644
    - template: jinja
