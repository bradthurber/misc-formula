removed_grains:
  grains.absent:
    - name: jboss_domain_name
    - destructive: True
