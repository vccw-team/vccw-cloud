# An ansible based provisioner for WordPress

## How to use

SSH into your machine.

```bash
$ ssh ubuntu@<ip>
```

Then run following.

```bash
$ curl https://raw.githubusercontent.com/coderdojo-japan/dojopaas-wordpress/master/provision.sh | bash
```

## Testing

```bash
$ vagrant up
```

Then run automated testing.

```bash
$ bundle install --path vendor/bundle
$ bundle exec rake spec
```
