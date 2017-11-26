package 'rabbitmq-server'

service 'rabbitmq-server' do
    action [:enable, :start]
end

def user_exists?(name)
  cmd = "rabbitmqctl -q list_users |grep '^#{name}\\b'"
  cmd = Mixlib::ShellOut.new(cmd)
  cmd.environment['HOME'] = ENV.fetch('HOME', '/root')
  cmd.run_command
  Chef::Log.debug "rabbitmq_user_exists?: #{cmd}"
  Chef::Log.debug "rabbitmq_user_exists?: #{cmd.stdout}"
  begin
    cmd.error!
    true
  rescue
    false
  end
end

unless user_exists?(iris)
    execute "create-user" do
       command "sudo rabbitmqctl iris 123456"
    end
end

execute "set-permissions" do
   command 'sudo rabbitmqctl set_permissions -p / iris ".*" ".*" ".*"'
end