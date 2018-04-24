### mailpile
--------

A free & open modern, fast email client with user-friendly encryption and privacy features  https://mailpile.is !

### Installing mailpile
-----------------------

 ###### The following commands will setup a docker installation for Mailpile:

   1. Installation First install ds: https://github.com/docker-scripts/ds#installation
   
   2. Clone the scripts from github: git clone https://github.com/.../mailpile.git
   
   3. Move the script into /opt/docker-scripts/: 
     
      `cp mailpile /opt/docker-scripts/`
     
   4. cd /opt/docker-scripts/
   
   5. Initialize a container directory for mailpile
     
      `ds init mailpile @mailpile`
     
   6. Initialize and fix the settings:
  
   ```
      source ds cd @mailpile   # (or: cd /var/ds/mailpile/)
      nano settings.sh
   ```
   
   7. Build image, create the container and configure it:
   ```  
      ds build
      ds create
      ds config 
   ```
