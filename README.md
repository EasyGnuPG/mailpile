# mailpile
A free & open modern, fast email client with user-friendly encryption and privacy features  https://mailpile.is !

### Installing mailpile

 ###### The following commands will setup a docker installation for Mailpile:

   1. Installation First install ds: https://github.com/docker-scripts/ds#installation
   
   2. Clone the scripts from github: git clone https://github.com/.../mailpile.git
   
   3. Move the script into /opt/docker-scripts/: cp mailpile /opt/docker-scripts/
   
   4. cd /opt/docker-scripts/
   
   5. ds init mailpile @mailpile
   
   6. source ds cd @mailpile   # (or: cd /var/ds/mailpile/)
   
   7. nano settings.sh
   
   8. ds build
   
   9. ds create
   
   9. ds config 
   
   10. Add to wsproxy: ds wsproxy add mailpile.example.org
   
   11. Navigate to mailpile.example.org:33411
