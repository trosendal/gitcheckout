gitcheckout
===========

Example for use of git2r checkout

This repository contains a binary dataset and a plotting script. Along the way the data was changed, luckily the project
was under version control so it is possible to see that at commit 'a1cf1d' the binary file named points.dta changed. 
However the differences are not apparent because git doesn't know what to do with the .dta format. Using git2r you
can quickly checkout the old version of the file and compare it to the new using the the foreign library.

examine_diffs.r is just pseudocode as git2r does not have a 'checkout' function yet. 
