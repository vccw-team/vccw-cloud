# Ubuntu based WordPress stack

## Requires

* Ansible 2.2.x

## Run

```
$ ansible-playbook provision/playbook.yml
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
