


### HAProxy

Use a manifest file to configure and define your HAProxy load balancer deployed by Cloud 66. These changes will be either be applied when you redeploy a stack with more than one server, rebuild HAProxy or edit [HAProxy CustomConfig](https://help.cloud66.works/{{ include.product }}/addins/haproxy.html).

Available settings (refer to the [HAProxy documentation](http://haproxy.1wt.eu/download/1.3/doc/configuration.txt) for more information):
Server definitions
unique_name: Name of the instance
size: The size of the instance (Mandatory)
region: Digital Ocean's region (Mandatory)
vendor: digitalocean (Mandatory)
key_name: Default (Mandatory)
Configuration:
- **httpchk**: The health-check configuration.
- **balance**: The load balancing strategy.
- **errorfile_\***: Location of your own custom error page content to serve in the case of receiving a HTTP error code on the load balancer.

{%include _inlines/Deployment/common/building-a-manifest-file/code_building-a-manifest-file_haproxy-oduction-v1.md  product = include.product %}

* * *
