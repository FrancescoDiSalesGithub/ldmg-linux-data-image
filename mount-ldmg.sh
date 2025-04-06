#!/bin/bash

LDMG_FILE="$1"
MOUNT_POINT="/media$LDMG_FILE"


LOOP_DEV=$(losetup -f --show "$LDMG_FILE")



pkexec losetup -f --show "$LDMG_FILE";mkdir -p "$MOUNT_POINT";mount "$LOOP_DEV"  "$MOUNT_POINT";udisksctl mount -b "$LOOP_DEV"; chmod 660 $MOUNT_POINT
notify-send "LDMG Mounted" "$LDMG_FILE mounted at $MOUNT_POINT"


