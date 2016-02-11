Role Name
=========

Installs logstash https://www.elastic.co/products/logstash

Requirements
------------

None

Docker
------
Latest version

````
docker run -d mrlesmithjr/logstash -f /etc/logstash/conf.d
````
Specific version  
````
docker run -d mrlesmithjr/logstash:2.2 -f /etc/logstash/conf.d
````
The included configurations are very basic so you will want to modify the config or create a new config and pass the path as above examples.  

Role Variables
--------------

````
---
# defaults file for ansible-logstash
clear_logstash_config: false  #defines if logstash_config_dir should be cleared out
config_logstash: false  #defines if logstash should be configured
logstash_config_dir: /etc/logstash/conf.d
logstash_base_configs:
  - 000_inputs
#  - 001_filters
#  - 002_metrics  #comment out if metrics for logstash processing are not required..good for keeping track of throughput...removed because of incompatabilities w/ES 2.x
  - 999_outputs
logstash_base_file_inputs:
  - path: /var/log/nginx/access.log
    type: nginx-access
  - path: /var/log/nginx/error.log
    type: nginx-error
  - path: /var/log/mail.log
    type: postfix-log
  - path: /var/log/redis/redis-server.log
    type: redis-server
logstash_deb_repo: 'deb http://packages.elastic.co/logstash/{{ logstash_version }}/debian stable main'
logstash_folder: /opt/logstash
logstash_base_outputs:
  - output: redis
    output_host: '{{ logstash_server_fqdn }}'
logstash_log_dir: /var/log/logstash
logstash_plugins:
  - logstash-filter-elasticsearch
  - logstash-filter-json_encode
  - logstash-filter-translate
#  - logstash-filter-zeromq
  - logstash-output-jira
  - logstash-output-slack
logstash_repo_key: https://packages.elasticsearch.org/GPG-KEY-elasticsearch
logstash_server_fqdn: logstash.example.org  #defines logstash server to send to...fqdn or localhost
logstash_version: 2.1
````

Dependencies
------------

None

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: mrlesmithjr.logstash }

License
-------

BSD

Author Information
------------------

Larry Smith Jr.
- @mrlesmithjr
- http://everythingshouldbevirtual.com
- mrlesmithjr [at] gmail.com
