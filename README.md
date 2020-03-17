squid-for-scrape
========================

A simple Dockerfile for launching an authenticated squid proxy.

Some squid config modifications were taken to ensure privacy of clients.

Possible use cases are several deployments for search engine scraping.

The user must specify authentication credentials via the following environment variables:

```
SQUID_USERNAME=foo
SQUID_PASSWORD=bar
```

An example invocation would be:

```
docker run -e SQUID_USERNAME=foo -e SQUID_PASSWORD=bar -p 3128:3128 n1kn4x/squid-for-scrape
```

With some added performance improvements and transparency settings.
Latest version of Squid.

Uses Alpine Linux.

Details
=======

Environment variables
---------------------

* SQUID_USERNAME
* SQUID_PASSWORD

Ports
-----

* 3128

Volumes
-------

* `/var/log/squid`

Ideas for Improvement
=====================
* Output logs to stdout.
