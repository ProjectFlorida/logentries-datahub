default['datahub']['config']['backend']['amazon_s3_account_id'] = ''
default['datahub']['config']['backend']['amazon_s3_bucket'] = ''
default['datahub']['config']['backend']['amazon_s3_encryption_key_file'] = ''
default['datahub']['config']['backend']['amazon_s3_secret_key'] = ''
default['datahub']['config']['backend']['local_path'] = ''

default['datahub']['config']['filters'] = []

default['datahub']['config']['logging']['default']['logInterval'] = 0
default['datahub']['config']['logging']['default']['logLocally'] = false
default['datahub']['config']['logging']['default']['sendToLogentries'] = true

default['datahub']['config']['logging']['heartbeat']['logInterval'] = 5
default['datahub']['config']['logging']['heartbeat']['logLocally'] = false
default['datahub']['config']['logging']['heartbeat']['sendToLogentries'] = true

default['datahub']['config']['logging']['system-stats']['logInterval'] = 5
default['datahub']['config']['logging']['system-stats']['logLocally'] = false
default['datahub']['config']['logging']['system-stats']['sendToLogentries'] = true

default['datahub']['config']['reporter']['autoupdate'] = true
default['datahub']['config']['reporter']['current_version'] = node['datahub']['version']
default['datahub']['config']['reporter']['interval'] = 5
default['datahub']['config']['reporter']['token'] = 'not used'
default['datahub']['config']['reporter']['update_datahub'] = false
default['datahub']['config']['reporter']['user_key'] = node['datahub']['account_key']

default['datahub']['config']['rules'] = []