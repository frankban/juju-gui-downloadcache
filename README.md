# juju-gui-downloadcache
This is the download cache for the pyramid fork of the juju-gui.

Unless you're adding wheels to it, you're probably looking at the wrong repo.

# Adding packages

If you need to add a package or update on already in the download cache, do the following:

* From pypi, download the tar.gz package to the `python` subdirectory.  We
  maintain these packages as a fallback in case the appropriate wheel cannot
  be found. 

* Create the wheel using: `make-wheel.sh python<packagename.tar.gz>

* If the wheel created ends with `py2.py3-none-any.whl` then it is a generic
  wheel (can be used on any Ubuntu release) so move it to the `wheels/generic`
  subdirectory.  Commit and create a pull request.

* If the wheel created ends with something like `linux_x86_64.whl` then a
  wheel for each supported Ubuntu release must be created.  Move the one you
  just created into wheels/<lsb>.  You'll need to repeat the process for each
  Ubuntu release we support.  Good luck with that.  When you've gotten them
  all created, commit your branch and create a pull request.
  

