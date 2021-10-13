### Terraform Configurations

The files in this repository are my terraform variable files, cloud_init files, data files, and shell scripts which are used 
to create the various sites I use at home.

I'm generally working on mimicing a production type site so I have various environments that if there were a team doing this, they'd be able to use it. With just me doing the learning, it's a lot of overkill but I think it helps me understand things like CI/CD and moving things between environments using Jenkins Pipelines for example. Do I personally need it for my projects, not really. But that's not the point :) 

* Denver - Sandbox site. Used for testing new servers such as the recent Katello server build.
* Boulder - Development site. Used for developing software and testing stuff that runs on top of servers like docker containers.
* Cabo - QA site.
* Tatooine - Staging site.
* Longmont - Production site. A lot of production like servers are here. Nagios, inventory, grafana, etc. Things you might find in a Production environment.
* Nederland - Home site. Basically my personal stuff.

Note that under normal circumstances, passwords and ssh keys wouldn't be in the repos. As this is a very local and blocked from external access site, I'm not currently too worried about it. I do intend on further research to properly manage such secrets but for now, I wanted to get the files out so I can back out if I make a horrible mistake.


