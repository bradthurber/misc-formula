set_grains_for_all_jboss_servers:
  grains.list_present:
    - name: roles
    - value:
      - jboss
      - mod-cluster-node
