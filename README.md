# linux_cross_openbsd
On Linux, cross compile program for OpenBSD 

This is modified for JRuby FFI/SubSpawn build processes

This is modified from upstream with:
 * Working non-Japan URLs
 * SSL fixes for downloading GCC dependencies
 * Exposes ld.so so that autotools works correctly
 * Environment fixes to more closely match dockcross

It is published as `byteit101/jrubycrossopenbsd_x86_64` on docker hub.
