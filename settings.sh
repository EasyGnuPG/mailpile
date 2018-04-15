APP=mailpile

### docker image and container
IMAGE=mailpile
CONTAINER=mailpile
#PORTS="7080:7080 80:80 443:443"    ## ports to be forwarded when running stand-alone
PORTS=""    ## no ports to be forwarded when running behind wsproxy

### domain of the site
DOMAIN="mailpile.example.org"

### password of the default manager
PASSWORD=
### language(s) of the interface
#LANG=sq,en,fr,de,it

### Gmail account for server notifications, etc.
GMAIL_ADDRESS=
GMAIL_PASSWD=
