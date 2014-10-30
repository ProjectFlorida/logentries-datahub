datahub Cookbook
==============

Installs/Configures DataHub which is designed to be run on a server instance inside your cloud or in an on-premise environment.

Requirements
------------

### Platform:

* Debian

### Cookbooks:

* java

Attributes
----------

###default
* `node['datahub']['account_key']` - Logentries account key

* `node['datahub']['version']` - version of DataHub to be installed
* `node['datahub']['url']` - URL of where DataHub should be downloaded from

* `node['datahub']['tcp']['bind_port']` - port to bind to DataHub
* `node['datahub']['tcp']['tls_bind_port']` - TLS port to bind to DataHub

* `node['java']['jdk_version']` - version of Java to install


###config
* `node['datahub']['config']['backend']['amazon_s3_account_id']` - Account ID of the IAM user created for S3 access
* `node['datahub']['config']['backend']['amazon_s3_bucket']` - the name of the bucket created in your AWS environment where you want to store log data
* `node['datahub']['config']['backend']['amazon_s3_encryption_key_file']` - location on Linux version will be /etc/leproxy/public_key.txt
* `node['datahub']['config']['backend']['amazon_s3_secret_key']` - secret key of the IAM user created for S3 access
* `node['datahub']['config']['backend']['local_path']` - location of local storage settings which allows DataHub customers to maintain a local copy of log data

* `node['datahub']['config']['filters']` - array of objects defining a matched pattern to be hashed e.g. "filters": [{ "name": "test", "pattern": "hello", "sensitivity": 1 }]

* `node['datahub']['config']['logging']['default']['logInterval']` - how often to send to Logentries (in minutes)
* `node['datahub']['config']['logging']['default']['logLocally']` - if this should be logged locally to disk
* `node['datahub']['config']['logging']['default']['sendToLogentries']` - whether logs are sent to Logentries of not

* `node['datahub']['config']['logging']['heartbeat']['logInterval']` - how often to send to Logentries (in minutes)
* `node['datahub']['config']['logging']['heartbeat']['logLocally']` - if this should be logged locally to disk
* `node['datahub']['config']['logging']['heartbeat']['sendToLogentries']` - whether logs are sent to Logentries of not

* `node['datahub']['config']['logging']['system-stats']['logInterval']` - how often to send to Logentries (in minutes)
* `node['datahub']['config']['logging']['system-stats']['logLocally']` - if this should be logged locally to disk
* `node['datahub']['config']['logging']['system-stats']['sendToLogentries']` - whether logs are sent to Logentries of not

* `node['datahub']['config']['reporter']['autoupdate']` - allow auto updated of DataHub
* `node['datahub']['config']['reporter']['current_version']` - current version of DataHub
* `node['datahub']['config']['reporter']['interval']` - does nothing
* `node['datahub']['config']['reporter']['token']` - not used
* `node['datahub']['config']['reporter']['update_datahub']` - whether to auto update DataHub
* `node['datahub']['config']['reporter']['user_key']` - Logentries account key

* `node['datahub']['config']['rules']` - rules are updated from the UI


###configLocal
* `node['datahub']['configLocal']['db']['username']` - database username
* `node['datahub']['configLocal']['db']['server']` - database server address
* `node['datahub']['configLocal']['db']['server']` - database server address
* `node['datahub']['configLocal']['db']['password']` - database password
* `node['datahub']['configLocal']['settings']['api_url']` - api url
* `node['datahub']['configLocal']['settings']['port']` - api url port
* `node['datahub']['configLocal']['settings']['host']` - data hostname
* `node['datahub']['configLocal']['settings']['update_url']` - datahub update url
* `node['datahub']['configLocal']['settings']['config_polling_interval']` - config polling interval in seconds
* `node['datahub']['configLocal']['settings']['api2_url']` - second api url
* `node['datahub']['configLocal']['settings']['update_polling_interval']` - update polling interval
* `node['datahub']['configLocal']['tcp']['bind_port']` - TCP for DataHub to bind to
* `node['datahub']['configLocal']['tcp']['max_size']` - max Size of a message
* `node['datahub']['configLocal']['tcp']['tls_bind_port']` - TLS port for DataHub

Recipes
-------

* default - installs and configures datahub


Extras
------

You will need to either override the ```node['datahub']['account_key']``` at a role or environment level, or in a wrapper cookbook.


License and Author
------------------

Author:: Joe Heung (<joe@joeheung.com>)

Copyright (C) 2014, joeheung

License:: All rights reserved

