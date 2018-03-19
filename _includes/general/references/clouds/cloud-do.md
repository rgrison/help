
## About using DigitalOcean cloud
You can use Cloud 66 to provision and deploy your code to servers in any [DigitalOcean region](http://developers.cloud66.com/#cloud-vendor-instance-regions). Private networking is enabled for all data centers that support it. This means that servers can communicate freely between each other on the same network without counting towards bandwidth costs.

### Authorise Cloud 66 to your DigitalOcean
Cloud 66 supports DigitalOcean API v2, which uses OAuth to authenticate requests. To authorize Cloud 66 to access your DigitalOcean account, visit the Cloud 66 dashboard and select Get started building a stack. After connecting to your Git repository and analyzing your code, you will be asked to Add your cloud platform. From this menu, select DigitalOcean.

Upon clicking the Authorize button, you will be redirected to DigitalOcean to allow Cloud 66 to use your account. Once confirmed you will be redirected back to Cloud 66, where you can deploy your stack into DigitalOcean.

**Notice**

If you are upgrading your keys from API v1 to v2, visit your _Account_ [Cloud keys](https://app.cloud66.com/clouds) page and edit your existing cloud key to authorize it with DigitalOcean. You need to be the account owner in order to update these credentials.

**Notice**

Should you wish to delete your stack on Cloud 66, your servers will not be deleted on your cloud provider unless physical server deletion is turned on.

### External Links
- [DO pricing](https://digitalocean.com/pricing)
- [DO features](https://digitalocean.com/features)
