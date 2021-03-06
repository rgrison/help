When using Cloud 66 to [deploy to your own servers]({% if page.collection != "skycap" %}/{{page.collection}}/tutorials/registered-servers.html{%else%}/maestro/tutorials/registered-servers.html{%endif%}), you might experience trouble with an existing MySQL installation on your server.

Along with our general operating system requirements for the deployment to your server to work, we also recommend that you uninstall all MySQL related files from your server before deploying.

Use apt to uninstall and remove all MySQL packages:

	$ sudo apt-get remove --purge mysql-server mysql-client mysql-common -y
	$ sudo apt-get autoremove -y
	$ sudo apt-get autoclean

Remove the MySQL folder:

	$ rm -rf /etc/mysql

Delete all MySQL files on your server:

```
$ sudo find / -iname 'mysql*' -exec rm -rf {} \;
```
Your system should no longer contain MySQL related files.
