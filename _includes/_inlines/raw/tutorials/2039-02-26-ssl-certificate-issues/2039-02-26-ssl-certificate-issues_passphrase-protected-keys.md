---
post: 
---

### Passphrase protected keys

You cannot use passphrase protected SSL certificate keys with Nginx. Using passphrase protected certificate keys will cause Nginx to prompt for the manual entry of passphrase at restart which will break the automatic deployment flow (and restart of Nginx after a server restart).

The symptoms of this is that your deployment gets stuck in the _Restarting Nginx_ step.

You can simply use a non-passphrase-protected version of your SSL certificate key when [adding an SSL key to your stack](/articles/ssl-certificate). Use the following command to do it (on your development computer):



{%include _inlines/2039-02-26-ssl-certificate-issues/code_2039-02-26-ssl-certificate-issues_passphrase-protected.md %}



You will be prompted for your passphrase and the output will be generated after that.
