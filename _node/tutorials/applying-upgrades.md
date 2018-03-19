---
layout: post
template: one-col
title:  "About applying upgrades"
categories: tutorials
legacy: false
lead: Aapplying upgrades and updates to your stack
tags: ['upgrade', 'update']
permalink: /:collection/:path
---


<h2 id="about">Cloud66 Update Packages Policy</h2>

Cloud 66 aims to make it easier to build immutable infrastructure. Building servers and stacks from scratch is much better than modifying existing server configurations and tinkering with settings until things start to work.

Of course everyone knows that, the reasons they don't do it is that it's difficult, time consuming and can be unpredicatble. That's why we want to make building stacks from scratch as easy and as quick as possible. So in all cases of upgrade, our first recommendation is to build a new stack and redirect your traffic to the new stack using our [Elastic Address](/node/tutorials/failover-groups.html).

We are always working to make it easier to build a new stack, move your data and switch your traffic arround but it might not always be what you want to do or as easy as you would like it to be. So here is what we suggest as alternatives and exceptions.

Based on that our workflow is such that when a new server is created we automatically update all the packages to the latest. After the server is created we only auto-install packages that are marked as <code>security updates</code>. So Cloud66 doesn't typically update other packages because it doesn't want to risk breaking or damaging your already running app (which doesn't apply when the server is newly created).

In order to deal with the upgrades you have a few options:

<ol class="article-list">

<li>Leave the package updates, safest bet or if you're concerned about your app stability.</li>
<li>Update the packages yourself through <code>sudo apt-get -y upgrade</code> or <code>dist-upgrade</code> package (if there is a new feature you're after or just want to be running the latest)</li>
<li>Update the packages indirectly through scaling up a new server, and then dropping the old one (the new server will always get the latest packages installed on it)</li>
</ol>
<div class="notice">
<h3>Tip:</h3>  
 <p>Some package updates (and security ones) require server-reboot. So again by scaling up we restart your new servers automatically to ensure everything is neat and clean! Alternatively you can reboot your servers manually or via the toolbelt should you wish!</p></div>

<h2 id="types">Upgrade package types</h2>
<h3 id="updates">Security updates</h3>

In the event of a security vulnerability on any of the components we deploy on the servers, we aim to be as quick as possible to roll out the recommended patches for Ubuntu, Ruby and Rails.

<h3 id="ubuntu">Ubuntu</h3>
<p>From the _Deploy_ menu, choose _Deploy with Options_. By selecting _Apply security upgrades_, Cloud 66 will perform operating system security package upgrades and set up <a href="https://help.ubuntu.com/community/AutomaticSecurityUpdates">unattended upgrades</a> for your stack. Unattended upgrades will automatically check for and install the latest Ubuntu security packages on a daily basis.</p>

Note that some security packages may require a server restart. We don't automatically restart your server, and it is at your discretion to do so. If the file `/var/run/reboot-required` exists, your server does in fact require a restart. To see which packages contributed to the requirement for a restart, please see `/var/run/reboot-required.pkgs`.

<h3 id="passenger">Passenger</h3>

The recommended way to upgrade your passenger to the latest one is:

* Scale up a new web server and drop the old one, so the scaled up one will automatically have the [latest version](/node/resources/technical-specifications.html#component-versions) supported by Cloud 66.

<h2 id="manual">About manual upgrades</h2>
If you need to upgrade any part of your stack the best course of action is always to build a new one. However, if that is not desired or possible, you can always perform manual upgrades.

We detect the version of all the components we have configured or deployed on your servers on a regular basis and after each deployment. If you upgrade any part of your stack manually, the upgrade will be detected by Cloud 66. This helps with the future automated upgrades.
