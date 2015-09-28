set_grains_for_all_jboss_member_controllers:
  grains.list_present:
    - name: roles
    - value:
      - jboss-member-controller

