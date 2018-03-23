---
layout: post
template: one-col
title: How to deal with a failover group
categories: how-to-guides/deployment
lead: ""
legacy: true
tags: ["high-availability"]

permalink: /:collection/:path
---

## Setup the failover group

As with any migration, you will need to deal with moving your code, data and traffic. 


### 1. Code

[Clone your existing stack](/legacy_docker/concepts/stack-definition.html) to a different cloud vendor or data center, and set it into [maintenance mode](/legacy_docker/tutorials/service-network-configuration.html) to prevent it from serving content. We highly recommend that you build a stack with similar server specifications to your main stack to avoid issues during a switch. 


### 2. Data

Enable [database replication between your stacks](/legacy_docker/tutorials/database-replication.html) - this will setup a master/slave architecture between your stacks, whereby the slave is an exact replica of the master at all times. 


### 3. Traffic

Use [Failover Groups](/legacy_docker/tutorials/failover-groups.html) to make it easy for you to switch between stacks. By pointing your domain at the Failover address, you will be able to switch your traffic between stacks at the click of a button.


## How to use the failover stack

If and when your main stack fails, you will need to switch to the failover stack.

1.  Set your main stack into [maintenance mode](/legacy_docker/tutorials/service-network-configuration.html), to prevent new data being written to it.
2.  Turn off the [database replication](/legacy_docker/tutorials/database-replication.html).
3.  Make your [database slave a master](/legacy_docker/references/shells/toolbelt.html#slave-promotion-to-standalone-master) - this will allow data to be written to the database.
4.  Turn off [maintenance mode](/legacy_docker/tutorials/service-network-configuration.html) on your failover stack.
5.  Use your [Failover group](/legacy_docker/tutorials/failover-groups.html) menu to switch your traffic to the failover stack. The TTL on the Failover address is 5 minutes, so you should see your users on the new stack momentarily.

