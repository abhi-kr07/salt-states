highstate_cron_job:
  cron.present:
    - name: "/usr/bin/salt-call state.highstate > /var/log/salt/highstate.log 2>&1"
    - user: root
    - minute: '0'
    - hour: '2'