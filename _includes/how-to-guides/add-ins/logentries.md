

<h2 id="about">About using Logentries</h2>

Logentries is a great service for centralizing your log files, and this add-in makes it easy to add across your servers.

<h2 id="add">Add Logentries to your stack</h2>
To add Logentries, access the add-ins menu of your stack and click _Logentries_.

We'll ask you for your Logentries account key - if you don't have one, you can signup to a Logentries account.

You can find your Logentries account ID in your account page. For more information, please see the [Logentries guide to how find the account key](https://docs.logentries.com/docs/accountkey/).

{% if page.collection == 'legacy_docker' or page.collection == 'maestro' %}
<div class="notice notice-danger">
	<h3>Note</h3>
	<p>For docker stacks this will be added to the host not as a container.</p>
</div>
{%endif%}

<h2 id="troubleshoot">Troubleshoot</h2>

### No Logs or Logs are empty in Logentries

If your log files (<span style="background-color: #FFFF00">make sure they exist on the server</span>) are not showing up in your Logentries account or they are empty, try to <b>SCAN FOR NEW LOGS</b>. In order to do that you will need to:

- Go to your log analyzer config page (click on logentries in your stack page under External add-ins).
- Push the SCAN FOR NEW LOGS button.