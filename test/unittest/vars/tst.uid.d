/*
 * Oracle Linux DTrace.
 * Copyright (c) 2006, 2020, Oracle and/or its affiliates. All rights reserved.
 * Licensed under the Universal Permissive License v 1.0 as shown at
 * http://oss.oracle.com/licenses/upl.
 */
/* @@xfail: dtv2 */

#pragma D option quiet

BEGIN
/curpsinfo->pr_uid == uid/
{
	exit(0);
}

BEGIN
{
	printf("%d != %d\n", curpsinfo->pr_uid, uid);
	exit(1);
}
