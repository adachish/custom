#default['deploy']['hoge']['user']='root' 
#default['deploy']['hoge']['group']='ec2-user' 

normal[:opsworks][:deploy_user][:user] = 'ec2-user'
normal[:opsworks][:deploy_user][:group] = 'ec2-user'
node[:deploy].each do |application, deploy|
  normal[:deploy][application][:deploy_to] = "/var/www/#{application}"
end
