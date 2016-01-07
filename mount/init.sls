{%- set jboss_domain_controller = salt['grains.get']('jboss_domain_controller', False) %}
mount_mnt_data:
  mount.mounted:
    - name: /mnt/data
    - device: {{ salt['pillar.get']('mount_device:data') }}/{{ salt['grains.get']('environment') }}
    - fstype: nfs
    - mkmnt: True
    - persist: True
    - opts: {{ salt['pillar.get']('mount_opts', 'vers=3,noatime,rsize=32768,wsize=32768,hard,intr,timeo=600') }}

mount_mnt_logs:
  mount.mounted:
    - name: /mnt/logs
    - device: {{ salt['pillar.get']('mount_device:logs') }}/{{ salt['grains.get']('environment') }}/{{ salt['grains.get']('host') }}
    - fstype: nfs
    - mkmnt: True
    - persist: True
    - opts: {{ salt['pillar.get']('mount_opts', 'vers=3,noatime,rsize=32768,wsize=32768,hard,intr,timeo=600') }}

{%- if jboss_domain_controller == true %}  
mount_mnt_shared_logs:
  mount.mounted:
    - name: /mnt/logroot
    - device: {{ salt['pillar.get']('mount_device:logs') }}
    - fstype: nfs
    - mkmnt: True
    - persist: True
    - opts: {{ salt['pillar.get']('mount_opts', 'vers=3,noatime,rsize=32768,wsize=32768,hard,intr,timeo=600') }}
{% endif %}
