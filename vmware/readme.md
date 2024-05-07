### Terraform Configurations

The files in this repository are my terraform variable files, cloud_init files, 
data files, and shell scripts which are used to create the various sites I use 
at home.

I'm generally working on mimicing a production type site so I have various 
environments that if there were a team doing this, they'd be able to use it. 
With just me doing the learning, it's a lot of overkill but I think it helps 
me understand things like CI/CD and moving things between environments using 
Jenkins Pipelines for example. Do I personally need it for my projects, not 
really. But that's not the point :) 

* Denver - Sandbox site. Used for testing new servers such as the recent Katello 
server build.
* Boulder - Development site. Used for developing software and testing stuff 
that runs on top of servers like docker containers.
* Cabo - QA site.
* Tatooine - Staging site.
* Longmont - Production site. A lot of production like servers are here. Nagios, 
inventory, grafana, etc. Things you might find in a Production environment.
* Nederland - Home site. Basically my personal stuff.

Note that under normal circumstances, passwords and ssh keys wouldn't be in 
the repos. As this is a very local and blocked from external access site, I'm 
not currently too worried about it. I do intend on further research to properly 
manage such secrets but for now, I wanted to get the files out so I can back 
out if I make a horrible mistake.

### Prerequesites

The repo should work with VMware, KVM, and even AWS, although that's more 
of an in progress section right now.

#### KVM

You'll need to build the KVM host before you can run these. I actually have 
a set of playbooks for building out a KVM server. Check the readme.md 
on which binary files you need in order to prepare the KVM host.

#### VMware

The assumption is you already have a VMware environment.

#### AWS

Make sure you have an appropriate site to host the servers.

### Configuration

The server.data file contains the configuration of every server for every 
site. The site.data file contains the configuration for each unique site.

The buildsite script takes the information from the site.data file and 
prepares the directory structure, then uses the server.data file and the 
files in the templates to create the individual cloud-init file and make.tf 
file.

In each site's main directory is an initialize script. This script builds 
all the servers for the site. There is also a teardown script. This script 
runs a terraform destroy on all servers for the site.

The rmsite script deletes all the sites outright. The resetsite script uses 
the virsh command to remove all the _domain and _pool entries.

For my testing, I populate the server.data and site.data files then run 
the buildsite script. Then go into the site directory and run the initialize 
script. This brings up all the guests.

If something gets screwed up, I may need to run the resetsite script to clean 
up all the guests and then rmsite script to clean up the directory structure. 
I fix the files in the template directory and try again.

