/*
 * Oracle Linux DTrace.
 * Copyright (c) 2006, 2020, Oracle and/or its affiliates. All rights reserved.
 * Licensed under the Universal Permissive License v 1.0 as shown at
 * http://oss.oracle.com/licenses/upl.
 */
/* @@xfail: dtv2 */

/*
 * ASSERTION:
 *
 * Declare a Variable in BEGIN and use that in another probe.
 *
 * SECTION: Program Structure/Probe Clauses and Declarations
 *
 */


#pragma D option quiet

int i;
BEGIN
{
	i = 0;
}

tick-10ms
/i == 0/
{
	exit(0);
}
