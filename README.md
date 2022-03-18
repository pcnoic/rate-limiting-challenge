# Blabla DevOps Challenge Solution

## Overview

### API and web server

This solution uses a simple Python API built with FastAPI.

### Implementing rate limiting using a proxy server

To implement a rate-limiting mechanism this solution relies on another opensource component, a high availability load balancer and proxy server for TCP and HTTP-based applications, called [haproxy](http://www.haproxy.org/).

To fulfill the two throttling requirements of the challenge, the solution relies on two throttling techniques:

- rate limit by sliding time window
- rate limit by HTTP header

These two techniques have been chosen on the assumption that a client is only able to perform 10 requests per second for every given second in a day and that the user account implementation depends on a specific HTTP header being present (for instance, one that carries an API key or user token).

### Setup

The setup of the solution is straightforward and illustrated in the following diagram.


### Requirements

You need to have the following in your system to run (and evaluate) the solution:

- Docker
- `make`

If you want to develop on `blabla-challenge` you should have `Python3` and `pip3` installed in your system.

### Usage

To build everything you have to execute:

`make build`
