base:
  'role:webserver':
    - match: grain
    - apache2
    - users
    - sample_test_pillar
    - motd
    - cron
    - user_test
    - module/http
    - os_check_from_pillar

