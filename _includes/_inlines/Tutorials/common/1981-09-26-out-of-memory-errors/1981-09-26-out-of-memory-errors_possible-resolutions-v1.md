


## Possible Resolutions

1.  Compile the assets on your own box and disable asset pipeline compilation on the stack going forward.
2.  Configure your code not to use asset pipeline pre-compilation and use live compilation (on-demand). [More information on Asset Pipeline compilation](http://help.cloud66.com/building-your-stack/asset-pipeline-compilation).
3.  Resize your box to a bigger box either via a new stack, or [vertical scaling]({% if include.product == "skycap" %}https://help.cloud66.works/maestro/stack-management/scaling.html{% else %}https://help.cloud66.works/{{ include.product }}/stack-management/scaling.html{% endif %}) if available.
4.  [Setup swap files on your server](https://www.digitalocean.com/community/articles/how-to-add-swap-on-ubuntu-12-04). This is automatically done for 512MB and 1GB DigitalOcean servers.
5.  Manually reduce memory usage on your server before deployments (ie. manually stop your webserver).
6.  Reduce memory usage on your server by limiting Passenger memory usage (using a [manifest file](https://help.cloud66.works/{{ include.product }}/deployment/getting-started-with-manifest-files.html) to specify a value for reserved_server_memory).