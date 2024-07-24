# this will run diretly thorugh command
script_name:
  cmd.run:
    - name: echo "Hello Abhishek"

# this will run thorugh source file templates
script_run:
  cmd.script:
    - name: salt://temp_script/templates/temp.sh