---
layout: post
template: one-col
title:  "What is the custom server add-in?"
categories: how-to-guides/add-ins
lead: Custom servers within the Cloud 66 ecosystem
tags: ['Customization', 'Add in']
legacy: true
permalink: /:collection/:path
---



## What is the custom server add-in?
Adding a custom server to your stack allows you to manage your own services while still benefiting from the Cloud 66 ecosystem.

A custom server will have the following Cloud 66 features enabled:

- [Monitoring](/legacy_docker/references/server-ip-addresses.html)
- Use of [Cloud 66 add-ins](/legacy_docker/how-to-guides/add-ins/add-in-implementation.html)
- [Log rotation](/legacy_docker/how-to-guides/deployment/shells/setting-up-custom-livelogs.html)
- [SSH to your server via toolbelt](/legacy_docker/how-to-guides/deployment/shells/ssh.html)
{%if page.collection != 'rails' and page.collection != 'node' %}- [Security](/legacy_docker/tutorials/service-networking.html){%endif%}

## Add a custom server
To add a custom server, access the add-ins menu and click _Custom Server_. You will then be able to choose the size of your new server and how many you'd like to add. Once your server is added, you'll be able to see and manage it as part of your stack.