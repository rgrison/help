---
layout: post
template: one-col
title: Connecting Your Git Repository
categories: getting-started
lead: ""
legacy: false

permalink: /:collection/:path
---



## Public repositories

For public Git repositories, you don't need to add the SSH key provided to your Git account. You simply need to provide the Git URL as either

`http://<git provider>/<username>/<repository>.git
`  

or   

`git://<git provider>/<username>/<repository>.git`



### Notice

We do not support the use of HTTPS URLs.


This URL is often generated by your Git provider automatically.


## Private repositories

For Cloud 66 to access your private repository (with read-only access), you first need to add the SSH provided to your account, You can find it by going to _Account_ --> _Keys & External Services_ --> _Source Code Git Key_.

You can add this SSH key globally to your Git account by adding it to your _Account settings_ page, or allow access to a specific repository by adding it as a _Deploy key_ to that repository.

Once this is done, use a Git URL in the following format:

`git@<git provider>:<username>/<repository>.git`

This URL is often generated by your Git provider automatically.


### GitHub example

1.  Adding the SSH key globally

    To add the SSH key globally, click the Account settings in the top right hand corner, and then SSH and GPG keys in the left menu (you can also choose a name).
2.  Adding the SSH key to a specific repository
    
    To add the SSH key to a specific repository, first access the Settings menu for that repository. Now simply click Deploy keys and paste your key there (you can also choose a name)
    
Once this is done, use a Git URL in the following format in the Cloud 66 UI:

`git@github.com:<username>/<repository>.git`


### BitBucket example

1.  Adding the SSH key globally
   
    To add the SSH key globally, click Manage account in the top right hand corner, and then SSH keys in the left menu (you can also choose a name).
2.  Adding the SSH key to a specific repository

    To add the SSH key to a specific repository, first access the Settings menu for that repository (top right), then click Deployment keys and paste your key there.

Once this is done, use a Git URL in the following format in the Cloud 66 UI:

`git@bitbucket.org:<username>/<repository>.git`
