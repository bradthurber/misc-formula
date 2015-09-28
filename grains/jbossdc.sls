set_grains_for_all_jboss_domain_controllers:
  grains.list_present:
    - name: roles
    - value:
      - jboss-domain-controller

