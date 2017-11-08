

```
 services:
  web:
    git_url: giturl.git
    git_branch: git branch   
    command: STARTUP COMMAND               
    build_command: BUILD COMMAND        
    deploy_command: DEPLOY COMMAND       
    log_folder: /usr/src/app/log          
    ports: ["3000:80:443", "4000"]        
    volumes: ["/tmp:/tmp/mnt_folder"]
    requires: ["api"]     
  api:
    image: API_IMAGE              
    command: STARTUP COMMAND                 
    ports: ["PORTS"]                                       
databases:
  - "DATABASE_NAME"
```