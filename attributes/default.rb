# General
default['datahub']['account_key'] = '00000000-0000-0000-0000-000000000000'

default['datahub']['version'] = '1.2.0.230'
default['datahub']['url'] = "https://d1l8gt88d35w5z.cloudfront.net/dstatic/DataHub_#{node['datahub']['version']}.deb"

default['datahub']['tcp']['bind_port'] = 10000
default['datahub']['tcp']['tls_bind_port'] = 20000

# Java overrides
override['java']['jdk_version'] = '8'
