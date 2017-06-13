Role Name
=========

An [Ansible] role that Installs/configures [Logstash]

Requirements
------------

Default config if `config_logstash=true` is to open `tcp/udp 10514` because
ports < 1024 require root access. Configure clients to send to `udp/tcp 10514`.
You can configure rsyslog to listen on `tcp/udp 514` and redirect rsyslog
to send to localhost on `tcp/udp 10514` to accomodate clients which cannot
send to a different port. See example below:

`/etc/rsyslog.d/50-default.conf`

`tcp`
```
*.* @@localhost:10514
```
`udp`
```
*.* @localhost:10514
```

Vagrant
-------

Spin up a Vagrant test environment

    vagrant up

When done testing you can tear-down

    ./cleanup.sh

Role Variables
--------------

[Role Defaults](defaults/main.yml)

Use your own outputs:

Example:

```yaml

logstash_custom_outputs:
  - output: 'gelf'
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

Dependencies
------------

None

Example Playbook
----------------

[Example Playbook](./playbook.yml)

License
-------

BSD

Author Information
------------------

Larry Smith Jr.
- [@mrlesmithjr]
- http://everythingshouldbevirtual.com
- mrlesmithjr [at] gmail.com

[@mrlesmithjr]: <https://www.twitter.com/mrlesmithjr>
[Ansible]: <https://www.ansible.com>
[Logstash]: <https://www.elastic.co/products/logstash>
