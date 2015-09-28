{%- if 'jboss-domain-controller' in salt['grains.get']('roles') %}
do_something_cool:
  cmd.run:
    - name: 'ls /'
{%- endif %}
