{% from "jboss/map.jinja" import jboss_settings with context %}
test_echo:
  cmd.run:
    - name: 'echo {{ jboss_settings.jboss_config|json }}'


sampleDS:
  jboss7.datasource_exists:
   - recreate: False
   - datasource_properties:
       driver-name: mysql
       connection-url: 'jdbc:mysql://localhost:3306/sampleDatabase'
       jndi-name: 'java:jboss/datasources/sampleDS'
       user-name: sampleuser
       password: secret
       min-pool-size: 3
       use-java-context: True
   - jboss_config:  {{ jboss_settings.jboss_config }}
   - profile: 'full-ha'

jndi_entries_created:
  jboss7.bindings_exist:
   - bindings:
      'java:global/sampleap/environment': 'DEV2'
      'java:global/sampleapp/configurationFile': '/var/opt/sampleapp/config.properties'
   - jboss_config:  {{ jboss_settings.jboss_config }}
   - profile: full-ha
