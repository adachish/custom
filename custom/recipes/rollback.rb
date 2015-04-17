node[:deploy].each do |application, deploy|

  opsworks_deploy do
    user deploy[:user]
    action :rollback
    
    only_if do
      File.exists?(deploy[:current_path])
    end
  end
end
