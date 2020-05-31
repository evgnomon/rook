#!/bin/bash

SERVERS=4

HCLOUD_SERVER=neu-k1-4gb-nbg1-1
HCLOUD_SERVER="$HCLOUD_SERVER neu-k2-4gb-hel1-1"
HCLOUD_SERVER="$HCLOUD_SERVER neu-k3-4gb-fsn1-1"
HCLOUD_SERVER="$HCLOUD_SERVER neu-k0-2gb-hel1-1"


for i in $HCLOUD_SERVER
do
	hcloud server poweroff $i
	hcloud server poweron $i
done


