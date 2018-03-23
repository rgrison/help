
Whether working in a team or by yourself, it's always useful to have an overview of your deployment history. This history includes
information about who deployed, when they deployed, what code revision was deployed and how the deployment was triggered (web, [API](http://developers.cloud66.com) or [redeployment hook]({% if page.collection != "skycap" %}/{{page.collection}}/tutorials/redeployment-hook.html{%else%}/maestro/tutorials/redeployment-hook.html{%endif%})). In addition to this, you can also revert
back to previous commits if need be.

Reverting to a previous commit will only affect your code - you might still need to restore a [database backup]({% if page.collection == "skycap" %}/maestro/tutorials/database-backup.html{% else %}/{{page.collection}}/tutorials/database-backup.html{% endif %}). If you wish, you can [switch off your database migrations]({% if page.collection == "skycap" %}/maestro/how-to-guides/databases/database-customization.html{% else %}/{{page.collection}}/how-to-guides/databases/database-customization.html{% endif %}), roll back your database and then roll back your code.

## Deployment Status
A "Live" status indicates that the code in that commit is live on your servers.

A <font color="green">green</font> deployment indicates that it has been successful, whereas a <font color="red">red</font> one indicates failure.

A reverted deployment is one that is no longer on your servers (the stack was rolled back to an earlier deployment).


## Usage
Accessing your stack page, click _Deployment history_ in the right sidebar. On this page, you can see your previous commits, and revert back to previous commits. Any code revisions that have not been deployed will have a hollow circle.

