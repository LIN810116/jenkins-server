=======================
Starting jenkins-server
=======================

See the :ref:`Starting jenkins-server <Starting jenkins-server>` command from the installation guide.

.. code-block:: bash

   sudo docker run -u root -p 8080:8080 -p 50000:50000 -v jenkins_server:/var/jenkins_home clin864/jenkins-server

