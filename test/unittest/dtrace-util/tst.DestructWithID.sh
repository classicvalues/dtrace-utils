#!/bin/bash
#
# Oracle Linux DTrace.
# Copyright (c) 2006, 2020, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at
# http://oss.oracle.com/licenses/upl.
#
# @@xfail: dtv2

## 
#
# ASSERTION:
# The -w option can be used to permit destructive actions in D programs.
#
# SECTION: dtrace Utility/-w Option;
# 	dtrace Utility/-i Option
#
##

if [ $# != 1 ]; then
	echo expected one argument: '<'dtrace-path'>'
	exit 2
fi

dtrace=$1

$dtrace $dt_flags -qwi 1'{chill(15); printf("Done chilling"); exit(0);}'
status=$?

if [ "$status" -ne 0 ]; then
	echo $tst: dtrace failed
fi

exit $status
