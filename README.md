# An ansible based provisioner for WordPress

## How to use

### Install

SSH into your machine.

```
$ ssh ubuntu@<ip>
```

Then run following.

```
$ curl https://raw.githubusercontent.com/coderdojo-japan/dojopaas-wordpress/master/provision.sh | bash
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

Finally, you have to finish installing WordPress to visit your domain.

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
