# SaltStack
Make sure that your file structure should be like this in /etc/salt/master.d/roots.conf

'file_roots:
  base:
    - /srv/salt/salt-states/base
  dev:
    - /srv/salt/salt-states/dev
  qa:
    - /srv/salt/salt-states/qa
'
environment should be set in /etc/salt/minion.d/env.conf
environment: base or dev (specific environment where you want to target)
