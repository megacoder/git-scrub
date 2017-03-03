GIT-SCRUB
=========

What
----

All it does is run *git clean -d -q -x" for you.  If you want additional arguments passed to git-clean(1) just add them to your command line.

How
---

	$ git scrub -n
	$ git scrub

Why
---

I get tired of typing all the fiddling arguments to git-clean(1) so I made this, my first, git(1) script.
