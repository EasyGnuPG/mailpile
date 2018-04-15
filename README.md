# mailpile

### Installing mailpile
 The following commands will setup a docker installation for Mailpile:

    Installation First install ds: https://github.com/docker-scripts/ds#installation
    Clone the scripts from github: git clone https://github.com/nkwate-kazim/mailpile.git
    Move the script into /opt/docker-scripts/: cp mailpile /opt/docker-scripts/
    cd /opt/docker-scripts/
    ds init mailpile @mailpile
    source ds cd @mailpile   # (or: cd /var/ds/mailpile/)
    nano settings.sh
    ds build
    ds create
    ds config 
    Add to wsproxy: ds wsproxy add mailpile.example.org
    Navigate to mailpile.example.org:33411
