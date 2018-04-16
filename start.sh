#!/bin/bash

echo "Loging into $NAGIOSHOSTNAME with user $NAGIOSUNAME, checking host $NAGIOSHOSTCHECK"

echo 'user="${NAGIOSUNAME}:${NAGIOSPASS}"' | curl -K - "https://$NAGIOSHOSTNAME/nagios/cgi-bin/cmd.cgi?cmd_typ=30&cmd_mod=2&host=$NAGIOSHOSTCHECK&service=swarm_launch_container&plugin_state=0&plugin_output='Swarm is running containers'&btnSubmit=Commit"
