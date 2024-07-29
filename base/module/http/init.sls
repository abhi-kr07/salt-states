fetch_data:
  module.run:
    - name: http.query
    - kwarg:
      url: http://httpbin.org/get

# Example SLS file
post_data:
  module.run:
    - name: http.query
    - kwarg:
      url: http://httpbin.org/post
    - kwarg:
        method: POST
        data: '{"key": "value"}'
        header_dict:
          Content-Type: application/json
