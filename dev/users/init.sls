user_abhi1:
  user.present:
    - name: abhi1
    - fullname: abhishek1
    - shell: /bin/bash
    - home: /home/abhi1
    - uid: 10001
    - groups:
      - wheel

abhi1_key:
  ssh_auth.present:
    - name: abhi1
    - user: abhi1
    - source: salt://users/keys/abhi1.pub
    - enc: ssh-rsa

