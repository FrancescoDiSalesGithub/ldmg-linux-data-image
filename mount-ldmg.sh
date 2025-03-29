#!/bin/bash

LDMG_FILE="$1"
MOUNT_POINT="/media$LDMG_FILE"


LOOP_DEV=$(losetup -f)


pkexec losetup "$LOOP_DEV" "$LDMG_FILE";mkdir -p "$MOUNT_POINT";mount "$LOOP_DEV"  "$MOUNT_POINT";udisksctl mount -b "$LOOP_DEV"



                                
