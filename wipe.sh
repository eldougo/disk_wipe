#! /bin/bash
#
# Sanitize sdc1 mounted on /mnt
# Stop when device is full or becomes unmounted.

MOUNTPOINT="/mnt"
DEVICE="/dev/sdd1"
SOURCE="/dev/urandom"
#SOURCE="/dev/zero"
PAUSE="10"

while df -h ${MOUNTPOINT} | grep ${DEVICE} && dd if=${SOURCE} of=$(mktemp -p ${MOUNTPOINT}) bs=512 count=512000
do
  sleep ${PAUSE}
  date
done
