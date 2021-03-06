#! /bin/bash

server_list=$(openstack server list | grep vnf.3c | awk '{print $4}')
#openstack server list | grep vnf.3c | awk '{print $4}' | xargs -n1 openstack server delete
if [ -n "$server_list" ] ; then
  for s in $server_list ; do
    echo "Deleting $s"
    openstack server delete $s
  done
  echo ""
  echo ""
  echo "Show server list:"
  openstack server list
else
  echo "No servers running"
fi
