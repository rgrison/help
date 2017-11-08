---
menuheaders: [ "Environment Variables" ]
layout: post
template: one-col
title: Environment Variables for RabbitMQ with Maestro
categories: Databases
lead: "Using RabbitMQ Environment Variables on Cloud 66 Maestro for container stacks"
legacy: false
recommendedName: [ "RabbitMQ with Maestro", "Backup" ]
recommendedLinks: [ "index.html", "backup.html" ]
permalink: /:collection/:path
---

{% assign dbtype = "rabbitmq" %}

## Environment Variables

Cloud 66 generates and maintains a number of environment variables automatically on your servers, including those that hold the address for your database server. When you enable database replication, we will generate additional environment variables for your slave server(s). The value of these variables will change when you enable or disable replication.
{% if include.dbtype == "redis" or include.dbtype == "postgres" or include.dbtype == "mysql" %}

{% endif %}

In the case that an environment variable contains multiple values, such as IP addresses, these are separated by comma.
