# ansible-logstash

Ansible role to install/configure Logstash

## Build Status

### GitHub Actions

![Molecule Test](https://github.com/mrlesmithjr/ansible-logstash/workflows/Molecule%20Test/badge.svg)

### Travis CI

[![Build Status](https://travis-ci.org/mrlesmithjr/ansible-logstash.svg?branch=master)](https://travis-ci.org/mrlesmithjr/ansible-logstash)

## Requirements

Default config if `config_logstash=true` is to open `tcp/udp 10514` because
ports \< 1024 require root access. Configure clients to send to `udp/tcp 10514`.
You can configure rsyslog to listen on `tcp/udp 514` and redirect rsyslog
to send to localhost on `tcp/udp 10514` to accomodate clients which cannot
send to a different port. See example below:

`/etc/rsyslog.d/50-default.conf`

`tcp`:

```bash
*.* @@localhost:10514
```

`udp`:

```bash
*.* @localhost:10514
```

For any required Ansible roles, review:
[requirements.yml](requirements.yml)

## Role Variables

[defaults/main.yml](defaults/main.yml)
Use your own outputs:

Example:

```yaml
logstash_custom_outputs:
  - output: "gelf"
    lines:
      - 'host => "localhost"'
      - 'port => "12201"'
```

Additional variables for customized configs:

```yaml
logstash_custom_inputs:
  - input: someinput
    lines:
      - 'somekey => "value"'

logstash_custom_filters:
  - lines:
      - 'somekey => "value"'

logstash_custom_outputs:
  - output: someoutput
    lines:
      - 'somekey => "value"'
```

## Dependencies

## Example Playbook

[playbook.yml](playbook.yml)

## License

MIT

## Author Information

Larry Smith Jr.

- [@mrlesmithjr](https://twitter.com/mrlesmithjr)
- [mrlesmithjr@gmail.com](mailto:mrlesmithjr@gmail.com)
- [http://everythingshouldbevirtual.com](http://everythingshouldbevirtual.com)

> NOTE: Repo has been created/updated using [https://github.com/mrlesmithjr/cookiecutter-ansible-role](https://github.com/mrlesmithjr/cookiecutter-ansible-role) as a template.
