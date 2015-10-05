set_grains_for_all_jboss_domain_controllers:
  grains.present:
    - name: jboss_domain_controller
    - value: True