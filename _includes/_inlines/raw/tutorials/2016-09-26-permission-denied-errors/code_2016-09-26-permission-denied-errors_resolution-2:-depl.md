---
layout: code
post: 2016-09-26-permission-denied-errors_resolution-2:-deploy-ho.md
---


production:
    after_rails:
      - command: sudo mkdir $STACK_PATH/tmp/folder && sudo chmod 0775 -R $STACK_PATH/tmp/folder
        target: rails
        execute: true