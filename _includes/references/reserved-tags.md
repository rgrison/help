
You can tag a variety of your infrastructure components, such as stacks, servers, or firewall rules, in order to differentiate them from one another. Some tag names are reserved by Cloud 66 as they will provide additional functionality to your infrastructure.

<h2 id="tags">Reserved tags</h2>
Cloud 66 currently reserves the following tags:

<table class="table table-bordered table-striped table-small">
<tr>
	<td><b>Tag</b></td>
	<td><b>Target</b></td>
	<td><b>Description</b></td>
</tr>
<tr>
	<td>c66.migrations.run</td>
	<td>server</td>
	<td>Sets the given server as the <a href="/{{page.collection}}/tutorials/database-management.html">migrator</a> - migrations will run on that server <i>only</i>, and the rest of the servers will wait until the migrations are performed before continuing with the deployment.</td>
</tr>
</table>
