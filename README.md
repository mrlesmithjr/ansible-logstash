# Role Name

An [Ansible] role that Installs/configures [Logstash]

## Requirements

Default config if `config_logstash=true` is to open `tcp/udp 10514` because
ports \< 1024 require root access. Configure clients to send to `udp/tcp 10514`.
You can configure rsyslog to listen on `tcp/udp 514` and redirect rsyslog
to send to localhost on `tcp/udp 10514` to accomodate clients which cannot
send to a different port. See example below:

`/etc/rsyslog.d/50-default.conf`

`tcp`

    *.* @@localhost:10514

`udp`

    *.* @localhost:10514

## Vagrant

Spin up a Vagrant test environment

    vagrant up

When done testing you can tear-down

    ./cleanup.sh

## Role Variables

```yaml
---
# defaults file for ansible-logstash
# Defines if logstash_config_dir should be cleared out
clear_logstash_config: false

# Defines if logstash should be configured
config_logstash: false

logstash_config_dir: '/etc/logstash/conf.d'

logstash_base_configs:
  - '000_inputs'
#  - '001_filters'
    # comment out if metrics for logstash processing are not required
    # good for keeping track of throughput...removed because of
    # incompatabilities w/ES 2.x
#  - '002_metrics'
  - '999_outputs'

logstash_base_file_inputs: []
  # - path: '/var/log/nginx/access.log'
  #   type: 'nginx-access'
  # - path: '/var/log/nginx/error.log'
  #   type: 'nginx-error'
  # - path: '/var/log/mail.log'
  #   type: 'postfix-log'
  # - path: '/var/log/redis/redis-server.log'
  #   type: 'redis-server'

# Define inputs below to configure
logstash_base_inputs: []
  # - prot: 'tcp'
  #   # Gets around port < 1024 (Note...Configure clients to send
  #   # to 10514 instead of default 514)
  #   port: '10514'
  #   type: 'syslog'
  # - prot: 'udp'
  #   # Gets around port < 1024 (Note...Configure clients to send to 10514
  #   # instead of default 514)
  #   port: '10514'
  #   type: 'syslog'
  # - type: 'beats'
  #   port: '5044'
  # - type: redis
  #   batch_count: '1000'
  #   host: '{{ logstash_server_fqdn }}'
  #   threads: '2'
  # - type: 'syslog'
  #   # reminder....ports < 1024 require root access..
  #   port: '514'

logstash_custom_inputs: []
  # - input: someinput
  #   lines:
  #     - 'somekey => "value"'

logstash_custom_filters: []
  # - lines:
  #     - 'somekey => "value"'

logstash_base_outputs: []
  # - output: 'redis'
  #   output_host: '{{ logstash_server_fqdn }}'

logstash_custom_outputs: []
  # - output: someoutput
  #   lines:
  #     - 'somekey => "value"'

logstash_deb_repo: 'deb https://artifacts.elastic.co/packages/{{ logstash_major_ver }}/apt stable main'
logstash_folder: '/opt/logstash'
logstash_log_dir: '/var/log/logstash'

# Define major version to install
logstash_major_ver: '5.x'

# Defines the miniumum amount of memory (in MB) required to effectively run Logstash
logstash_min_memory_required: 1024

logstash_minor_ver: '1:5.4.3-1'  # Define minor version to install also defines Pin priority on APT Preferences.d

logstash_plugins:
  # - 'logstash-codec-nmap'
  - 'logstash-filter-elasticsearch'
  - 'logstash-filter-json_encode'
  # - 'logstash-filter-multiline'
  - 'logstash-filter-translate'
  # - 'logstash-filter-zeromq'
  - 'logstash-input-beats'
  - 'logstash-output-email'
#  - 'logstash-output-jira'
#  - 'logstash-output-slack'

# https://github.com/elastic/logstash/issues/6528
logstash_plugin_cmd_vars: "JARS_SKIP='true'"
# Other examples:
# Options to work with proxy
# logstash_plugin_cmd_vars: "JARS_SKIP='true' JRUBY_OPTS='-J-Dhttps.proxyHost=user:password@proxy.com -J-Dhttps.proxyPort=8080 -J-Dhttp.proxyHost=user:password@proxy.com -J-Dhttp.proxyPort=8080'"

logstash_repo_key: 'https://artifacts.elastic.co/GPG-KEY-elasticsearch'
logstash_repo_url: 'https://artifacts.elastic.co/packages/{{ logstash_major_ver }}/yum'

# Defines logstash server to send to...fqdn or localhost
logstash_server_fqdn: 'logstash.{{ pri_domain_name }}'
pri_domain_name: 'example.org'

openjdk_version: 8
logstash_install_java: true
```

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

## Dependencies

None

## Example Playbook

[Example Playbook](./playbook.yml)

## License

BSD

## Author Information

Larry Smith Jr.

-   [@mrlesmithjr]
-   <http://everythingshouldbevirtual.com>
-   mrlesmithjr [at] gmail.com

[@mrlesmithjr]: https://www.twitter.com/mrlesmithjr

[ansible]: https://www.ansible.com

[logstash]: https://www.elastic.co/products/logstash
