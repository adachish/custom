node[:deploy].each do |application, deploy|

  opsworks_deploy_user do
    deploy_data rollback
  end

end
