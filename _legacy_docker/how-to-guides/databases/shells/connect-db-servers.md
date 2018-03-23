---
layout: post
template: one-col
title: How to connect to your database servers
categories: how-to-guides/databases
lead: ""
legacy: true
tags: ["debugging"]

permalink: /:collection/:path
---

## On the server

You can connect directly into your database server and invoke a database console from there. To do that, please refer to the [terminal connection to servers](/legacy_docker/how-to-guides/deployment/shells/ssh.html) documentation.


## With a client

You can also open a firewall port in your database server to allow a remote machine to connect the it. This is possible using the [Stack security](/legacy_docker/tutorials/service-network-configuration.html) page, and then you can use a database client from your local computer.

