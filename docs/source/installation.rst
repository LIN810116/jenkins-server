============
Installation
============

The jenkins-server is pre-built and stored as a docker image. It can now be download from Docker Hub - an online Docker image repository.

Prerequisites
=============

* Docker

Installation steps
==================

#. Pull the Docker image from Docker Hub

   .. code-block:: bash

      sudo docker pull clin864/jenkins-server


.. _Starting jenkins-server:

#. Starting jenkins-server

   .. code-block:: bash

      docker run -u root -p 8080:8080 -p 50000:50000 -v jenkins_server:/var/jenkins_home clin864/jenkins

   .. note::

      By default, the web server will be hosted on port 8080. You can also reset host port (-p HOST_PORT:CONTAINER_PORT) if needed.
      This command will also automatically create a docker volume named ``jenkins_server`` on the host machine if not exists.
      Docker volumes retain their content even when the container is stopped, started, or deleted.

#. The first time you run the image, you will see a message printed on the terminal like this:

   .. code-block:: text

      Jenkins initial setup is required. An admin user has been created and a password generated.
      Please use the following password to proceed to installation:

      b7379465879043db8ac9d75309aa433b

      This may also be found at: /var/jenkins_home/secrets/initialAdminPassword

   Copy the initial password (the random string of numbers and letters)

#. Open browser and go to http://localhost:8080/ (or or whichever port you use in the docker run command). paste the initial password you just copied into the **Administrator password** field and click **Continue**

   .. figure:: ./_static/images/unlock_jenkins_page.PNG
      :name: Unlock Jenkins page
      :align: center
      :alt: Unlock Jenkins page

      Unlock Jenkins page

#. Click **Install suggested plugins**. Once the plugins have been installed, click **Continue**
#. Create the first Admin user, then click **Save and Continue**

   .. figure:: ./_static/images/create_first_admin.PNG
      :name: Create First Admin User
      :align: center
      :alt: Create First Admin User

      Create First Admin User

#. In the **Instance Configuration** page, use the default settings and click **Save and Finish**
#. Click the **Restart** button to restart the server and apply the new setups
