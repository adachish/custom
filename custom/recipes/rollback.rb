node[:deploy].each do |application, deploy|

  opsworks_deploy do
    user deploy[:user]
    action :rollback
  end
end
