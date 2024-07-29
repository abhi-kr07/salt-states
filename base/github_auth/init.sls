{% set github_token = salt['pillar.get']('github:token', '') %}

query_github_user:
  module.run:
    - name: http.query
    - url: https://api.github.com/user
    - header_dict:
        Authorization: "token {{ github_token }}"
        Accept: "application/vnd.github.v3+json"
    - status: 200
    - decode: True
    - text: True