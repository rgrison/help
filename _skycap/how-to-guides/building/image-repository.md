---
layout: post
template: one-col
title: Connecting to Docker Image Repository
categories: how-to-guides/building
lead: ""
legacy: false
tags: ["customization", "docker"]
permalink: /:collection/:path
---



### Provide a Docker image

The source of your Docker image, which can come from a private repository that the credentials are provided. For [Docker Hub](https://registry.hub.docker.com/) images, use the following URL format:

```
<namespace>/<image_name>:<tag>
```

If you are pulling a public image from Docker Hub, use the following format:

```
<namespace>/<image_name>:<tag>
```

If you are using [Quay.io](https://quay.io/) for your image repository, you will use the following URL format:

```
quay.io/<namespace>/<image_name>:<tag>
```

If you are using [Google Container Registry](https://cloud.google.com/container-registry/docs/) for your image repository, you will use the following URL format:

```
gcr.io/<project_id>/<namespace>/<image_name>:<tag>
```




### How To Add Docker Image Repository

You need to go to _Account_ --> _Keys & External Services_ --> _Docker Image Repo_  and click on _ADD A PROVIDER_ or click on __+__ if you already have one and want to add a second one.

