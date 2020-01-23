#!/usr/bin/dtrace
/*
 * Oracle Linux DTrace.
 * Copyright (c) 2005, 2020, Oracle and/or its affiliates. All rights reserved.
 * Licensed under the Universal Permissive License v 1.0 as shown at
 * http://oss.oracle.com/licenses/upl.
 */

/* @@xfail: dtv2 */
/* @@trigger: none */

BEGIN
{
	start = timestamp;
}

tick-1s
{
	exit(0);
}

END
{
	printf("end reached");
}
