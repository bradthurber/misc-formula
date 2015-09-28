disable_iptables_service:
  service.dead:
    - name: iptables
    - enable: False
