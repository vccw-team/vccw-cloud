# An ansible based provisioner for WordPress

## How to use

SSH into your machine.

```
$ ssh ubuntu@<ip>
```

Then run following.

```
$ curl https://raw.githubusercontent.com/coderdojo-japan/dojopaas-wordpress/master/provision.sh | bash
```

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
