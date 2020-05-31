#!/bin/bash

SERVERS=4

ROOK_DIRS=/var/lib/rook/
ROOK_DIRS="$ROOK_DIRS /var/lib/kubelet/plugins/rook-ceph.cephfs.csi.ceph.com"
ROOK_DIRS="$ROOK_DIRS /var/lib/kubelet/plugins/rook-ceph.rbd.csi.ceph.com"
ROOK_DIRS="$ROOK_DIRS /var/lib/kubelet/plugins_registry/rook-ceph.cephfs.csi.ceph.com-reg.sock"
ROOK_DIRS="$ROOK_DIRS /var/lib/kubelet/plugins_registry/rook-ceph.rbd.csi.ceph.com-reg.sock"

for i in {0..3}
do
	ssh root@k$i.neu.clusterlean.com "rm -r $ROOK_DIRS"
done


