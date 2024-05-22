# linux_cross_openbsd
On Linux, cross compile program for OpenBSD 

This is modified for JRuby FFI/SubSpawn build processes

This is modified from upstream with:
 * Working non-Japan URLs
 * SSL fixes for downloading GCC dependencies
 * Exposes ld.so so that autotools works correctly
 * Environment fixes to more closely match dockcross
 * Last stage pulled into new dockerfile

It is published as `byteit101/jrubycrossopenbsd_x86_64` on docker hub.


The build process is to build everything in /gcc before coping to a fresh container the top level `output/`
