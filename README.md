# VCCW on Cloud

This is a cloud envirionment for WordPress based on [VCCW](http://vccw.cc/).

* VirtualHost Support
* SSL + Let's Encrypt
* Apache + Nginx Reverse proxy
* PHP7

## How to use

### Requires

* Ubuntu 16.04

### Install

SSH into your machine.

```
$ ssh ubuntu@<ip>
```

Then run following.

```
$ curl https://raw.githubusercontent.com/vccw-team/vccw-cloud/master/provision.sh | bash
```

### Add virtual host of WordPress

```
$ sudo wp-addvhost example.com
```

Then you can see like following.

```
---
Hostname: example.com
MySQL Database: example.com
MySQL User: example.com
MySQL Password: ygL1J7t4PrHU
Document Root: /var/www/example.com/html
---
Success: Adding virtual host was completed.
```

Finally, you have to visit your domain to finish installing.

## Contributing

```
$ vagrant up
```

SSH into the machine.

```
$ vagrant ssh
```

Run provisioner.

```
$ cd /vagrant && ansible-playbook provision/playbook.yml --connection=local
```

Then run automated testing.

```
$ bundle install --path vendor/bundle
$ bundle exec rake spec
```
