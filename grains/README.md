States in this folder should define custom grains

Custom Grains in use:
==============

environment
-----------
: The ad-hoc name of this environment 

jboss_domain_controller: True
: True if this is a JBoss Domain Controller. If False, then not a JBoss Domain Controller

roles
-----

roles: jboss
: is a jboss server.

roles: mod-cluster-node
: is a modcluster node - a JBoss server using modcluster to connect to a webserver

roles: mod-cluster-server
: serves mod cluster requests (generally also a webserver role as well)

roles: webserver
: Runs apache - is likely a mod-cluster-server as well
