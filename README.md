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

## Testing

```
$ vagrant up
```

Then run automated testing.

```bash
$ bundle install --path vendor/bundle
$ bundle exec rake spec
```
