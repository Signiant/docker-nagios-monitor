#!/bin/sh

echo "Loging into $NAGIOSHOSTNAME with user $NAGIOSUNAME, checking host $NAGIOSHOSTCHECK"

curl -k --user $NAGIOSUNAME:$NAGIOSPASS "https://$NAGIOSHOSTNAME/nagios/cgi-bin/cmd.cgi?cmd_typ=30&cmd_mod=2&host=$NAGIOSHOSTCHECK&service=swarm_launch_container&
plugin_state=0&plugin_output=Swarm_run_operational&btnSubmit=Commit"
