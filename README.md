# Project-1
Vanderbilt Bootcamp Project 1
## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

https://github.com/DustinBeebe1/Project-1/issues

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the playbook file may be used to install only certain pieces of it, such as Filebeat.

  -
  

This document contains the following details:
- Description of the Topologu
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly available, in addition to restricting access to the network.
- _TODO: Load balancing ensure availability to the webservers which is the availability part of the CIA triad. 
What is the advantage of a jump box? The advantage is having a single origin point for admin tasks. 

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the logs and system traffic.
- Filebeat watches for log files and locations, and collects log events from these.
- Metricbeat records metrics and statistical data from the operating system and from the services running on the server.

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway  | 10.0.0.4   | Linux-Ubuntu     |
| Web1     | Web Server| 10.0.0.7  | Linux-Ubuntu     |
| Web2     | Web Server| 10.0.0.8  | Linux-Ubuntu     |
| ELk      | ELK stack | 10.1.0.4  | Linux-Ubuntu     |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jump Box machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- Personal IP Address

Machines within the network can only be accessed by SSH.
- The ELK server is accessible by SSH from the JumpBox and through the web from my Personal IP address.

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | No                  | Personal IP          |
|  Web-1   | Yes, Load balancer  | 10.0.0.4             |
|  Web-2   | Yes, Load balancer  | 10.0.0.4             |
| ELK-Server | No                | SSH 10.0.0.4 - Port 5601 Personal IP |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- The main advantage of automating the installation process using ansible is that we can deploy to multiple servers quickly and easily without having to physically be at each server.

The playbook implements the following tasks:
- Install Docker.io and pip3
- Increase VM memory
- Download and configure ELK docker container

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.


 


### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- Web-1: 10.0.0.7
- Web-2: 10.0.0.8

We have installed the following Beats on these machines:
- Filebeat
- Metricbeat

These Beats allow us to collect the following information from each machine:
- Filebeat watches for log files/locations and collects log events.
- Metricbeat records metrics and statistical data from the operating system and from services running on the server.

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the filebeat-config.yml and metricbeat-config.yml file to /etc/ansible/files.
- Update the configuration files to include the private IP of the ELK-Server to the ElasticSearch and Kibana Sections of the Configuration File.
- Run the playbook, and navigate to ELK-Server-PublicIP:5601/app/kabana to check that the installation worked as expected.

- Which file is the playbook? 
-elk-playbook.yml - used to install the ELK server.
- filebeat-playbook.yml - used to install and configure Filebeat on the ELK and webservers.
-metricbeat-playbook.yml - used to install and configure Metric beat on the ELK server and webservers.
Where do you copy it? /etc/ansible
- Which file do you update to make Ansible run the playbook on a specific machine? /ect/ansible/hosts.cfg 
How do I specify which machine to install the ELK server on versus which to install Filebeat on? In the hosts file you enter the IPs of the servers that you want to install the playbooks on.
- _Which URL do you navigate to in order to check that the ELK server is running?
http://(elkserverIP):5601
