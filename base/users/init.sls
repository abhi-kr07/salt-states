user_abhi:
  user.present:
    - name: abhi
    - fullname: abhishek
    - shell: /bin/bash
    - home: /home/abhi
    - uid: 10000
    - groups:
      - wheel

abhi_key:
  ssh_auth.present:
    - name: abhi
    - user: abhi
    - source: salt://users/keys/abhi.pub
    - enc: ssh-rsa

