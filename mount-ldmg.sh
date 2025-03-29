#!/bin/bash

LDMG_FILE="$1"
MOUNT_POINT="/media$LDMG_FILE"


LOOP_DEV=$(losetup -f)


pkexec losetup "$LOOP_DEV" "$LDMG_FILE";mkdir -p "$MOUNT_POINT";mount "$LOOP_DEV"  "$MOUNT_POINT";udisksctl mount -b "$LOOP_DEV"


if [ $? -eq 0 ]; then
    notify-send "LDMG Mounted" "$LDMG_FILE mounted at $MOUNT_POINT"
else
    notify-send "LDMG Mount Failed" "Could not mount $LDMG_FILE"
fi

                                
