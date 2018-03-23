---
layout: post
template: one-col
title:  "About Logging with Cloud 66"
categories: tutorials
lead: Cloud 66 makes it easy to handle your stack logs
tags: ['Logs']
legacy: false
permalink: /:collection/:path
---


<h2 id="about">About logging with Cloud 66</h2>
When Cloud 66 deploys your servers, we also configure the logging for various services on your server. There are several logs available for different parts of your server. Depending on the specifics of your application, log names and directories may vary. The information below applies to most applications.

<h2 id="ruby">Ruby stacks</h2>
<h3>Web logs</h3>
Web logs are stored in <code>$STACK_PATH/log</code>:

<ul class="list">
<li>Web logger: <pre class="terminal">$STACK_PATH/log/&#60;environment&#62;.log</pre></li>
<li>Nginx error log: <pre class="terminal">$STACK_PATH/log/nginx_error.log</pre></li>
</ul>

If you are using a [custom web server](/rails/tutorials/custom-web-servers.html), such as [Unicorn](/rails/tutorials/unicorn-rack-server.html), you can find your web server bluepill logs in <code>/tmp/web_server_bluepill.log</code>.

<h3>Background processes</h3>

Logs for background processes can also be found in <code>$STACK_PATH/log</code>, and depend on the name of the process:

<ul class="list">
<li>Process log: <pre class="terminal">$STACK_PATH/log/user_&#60;name&#62;.log</pre></li>
<li>Process bluepill log: <pre class="terminal">$STACK_PATH/log/user_&#60;name&#62;.pill</pre></li>
</ul>

<h3>Other</h3>

<ul class="list">
<li>Auth requests, Fail2Ban etc: <pre class="terminal">/var/log</pre></li>
<li>Nginx access and errors: <pre class="terminal">/opt/nginx/logs</pre></li>
</ul>

<h2 id="rotation">Log rotation</h2>
Your logs in `$STACK_PATH/log` and `/var/log` are automatically rotated on a daily basis into a sub-directory called archive/ in each respective directory. These logs are compressed, and can be uncompressed with the following command: `gzip -d <log_file>.log.gz`.