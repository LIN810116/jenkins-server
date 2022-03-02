=======================
Starting jenkins-server
=======================

Issue the command below to start the Jenkins Server.
For detailed explanation of the Docker run command, see :ref:`Starting jenkins-server <Starting jenkins-server>` from the installation guide.

.. code-block:: bash

   sudo docker run -u root -p 8080:8080 -p 50000:50000 -v jenkins_server:/var/jenkins_home clin864/jenkins-server

The web GUI will be accessible on http://localhost:8080/
