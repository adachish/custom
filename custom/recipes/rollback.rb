include_recipe 'deploy'

node[:deploy].each do |application, deploy|

  opsworks_deploy do
    deploy_data deploy
    app application
    only_if { File.exists?(deploy[:current_path]) }
  end
end
