node[:deploy].each do |application, deploy|

  opsworks_deploy do
    action :rollback
    a
  end

end
