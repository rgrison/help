---
layout: post
template: one-col
title: How to handle Multi Region Stacks
categories: how-to-guides/deployment
lead: ""
legacy: false
tags: ["high-availability"]

permalink: /:collection/:path
---

There are several options to consider when dealing with the infrastructure of a multi-region stack. The most challenging part is related to the application - the infrastructure usually caters for how the application is designed to deal with scalability.

When it comes to multi-region servers, having a load balancer that distributes traffic between multiple geographical regions is the easy part and can be setup with [CustomConfig for HAProxy](/rails/how-to-guides/security/multi-cert_haproxy.html). However, the big challenge is how to deal with data.

These are the possible scenarios:

1. For a static website with no database backing it, the best option is to use geographical DNS providers to distribute the traffic based on the visitor's location. Feel free to [contact us](mailto:support@cloud66.com) and we'll help you find the best DNS provider for your needs.

2. For a website with no write operations to a database, the most viable option is to have a [read-only replication](/rails/tutorials/database-replication.html) across different geographical locations serving local web servers.

3. For an application that has to both read and write to the database, you can either shard the data based on some algorithm that suits your requirements or have a master/master database setup which is globally distributed.

The biggest challenge in these scenarios is dealing with the data availability across geographical regions without having unacceptable latencies.

Feel free to [contact us](mailto:support@cloud66.com) if you would like more specific advice about multi-region stacks.
