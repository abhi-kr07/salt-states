user_abhi:
    user.present:
        - name: abhi1
        - fullname: abhishek1
        - shell: /bin/bash
        - home: /home/abhi1
        - uid: 10001
        - gid_from_name: True
        - groups:
            - wheel

abhi_key:
    ssh_auth.present:
        - name: abhi1
        - user: abhi1
        - source: salt://users/keys/abhi1.pub
