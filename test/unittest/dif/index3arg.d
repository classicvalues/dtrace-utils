/* @@xfail: dtv2 */
BEGIN
{
	exit(index("BEGINNING", "G", 3) == 8 ? 0 : 1);
}
