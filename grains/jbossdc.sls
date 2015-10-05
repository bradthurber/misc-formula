set_grains_for_all_jboss_domain_controllers:
  grains.present:
    - name: jboss-domain-controller
    - value: True