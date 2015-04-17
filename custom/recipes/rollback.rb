node[:deploy].each do |application, deploy|

  opsworks_deploy do
    deploy_data 'rollback'
  end

end
