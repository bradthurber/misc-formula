States in this folder should define custom grains

Custom Grains in use:
==============

environment
-----------
: The ad-hoc name of the back-end environment this JBoss domain communicates with. By keeping "environment" and "JBoss domain" concepts separate, multiple JBoss domains could share environments. "Environment" configuraiton will include things that are generally secured by nature. Examples: LDAP Bind information, admin accounts and groups, datasource configuration (including passwords). This information will be provided by a matching salt pillar.

jboss_domain_name
-----------------
: The ad-hoc name of the JBoss domain this system is in. All jboss and apache hosts in the same JBoss domain should share the same jboss_domain_name. A JBoss domain will be configured to operate against a single "environment".

roles
-----

roles: jboss
: is a jboss server.

roles: jboss-domain-controller
: is a domain controller - controls host controllers. May be a mod-cluster-node as well.

roles: jboss-member-controller
: is a jboss member controller - contolled by a domain controller. Is likely a mod-cluster-node as well

roles: mod-cluster-node
: is a modcluster node - a JBoss server using modcluster to connect to a webserver

roles: mod-cluster-server
: serves mod cluster requests (generally also a webserver role as well)

roles: webserver
: Runs apache - is likely a mod-cluster-server as well
