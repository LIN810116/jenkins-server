=================
Advanced tutorial
=================

.. _Switching Python version:

Switching Python version
========================

jenkins-server uses `pyenv <https://github.com/pyenv/pyenv>`_ for Python version management.
Below is a list of the pre-installed Python versions that you can use.

* 3.6.15
* 3.7.12
* 3.8.12
* 3.9.10

The default system Python version is 3.9.10.
You can switch the version by adding/setting the environment variable ``PYENV_VERSION`` to any version on the list in your pipeline script/Jenkinsfile.
E.g. PYENV_VERSION=3.6.15
