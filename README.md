# An ansible based proisioner for WordPress

## How to use

SSH into your machine.

```
$ ssh ubuntu@<ip>
```

Clone this repository in your machine and change directory into the repo.

```
$ https://github.com/coderdojo-japan/dojopaas-wordpress
$ cd dojopaas-wordpress
```

Run following.

```
$ sudo ansible-playbook provision/playbook.yml --connection=local
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
