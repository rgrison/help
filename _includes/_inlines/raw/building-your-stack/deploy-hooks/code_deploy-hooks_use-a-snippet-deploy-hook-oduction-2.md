---
layout: code
post: deploy-hooks_use-a-snippet-deploy-hook.md
---


production: # Environment
    first_thing: # Hook point
      - snippet: cloud66/node # Hook type
        target: any # Hook fields
        execute: true
      - snippet: cloud66/bower
        target: any
        execute: true