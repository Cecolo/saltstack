#! jinja | yaml

{% from "map.jinja" import mariaconf with context %}

mariadb:
  service.running:
    - watch:
        - file: {{ mariaconf.conf }}
  file.line:
    - name: {{ mariaconf.conf }}
    - mode: ensure
    - content: plugin-load = auth_socket.so
    - after: \[mysqld\]

