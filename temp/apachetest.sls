{% from "apache/map.jinja" import apache with context %}
test_echo:
  cmd.run:
    - name: 'echo {{ apache.version }}'
