set_grains_for_all_jboss_webservers:
  grains.list_present:
    - name: roles
    - value:
      - webserver
      - mod-cluster-server
