#default['deploy']['hoge']['user']='root' 
#default['deploy']['hoge']['group']='ec2-user' 

default[:opsworks][:deploy_user][:user] = 'ec2-user'
default[:opsworks][:deploy_user][:group] = 'ec2-user'
default[:deploy][application][:deploy_to] = "/var/www/#{application}"
