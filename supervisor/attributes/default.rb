default['supervisor']['unix_http_server']['chmod'] = '700'
default['supervisor']['unix_http_server']['chown'] = 'root:root'
default['supervisor']['inet_port'] = nil
default['supervisor']['inet_username'] = nil
default['supervisor']['inet_password'] = nil
normal['supervisor']['dir'] = '/etc/supervisor.d'
normal['supervisor']['conffile'] = '/etc/supervisord.conf'
default['supervisor']['log_dir'] = '/var/log/supervisor'
default['supervisor']['logfile_maxbytes'] = '50MB'
default['supervisor']['logfile_backups'] = 10
default['supervisor']['loglevel'] = 'info'
default['supervisor']['minfds'] = 1024
default['supervisor']['minprocs'] = 200
default['supervisor']['socket_file'] = '/var/run/supervisor.sock'


# Celery
default['celery']['project'] = "webapps"
default['celery']['workdir'] = "~/Team306/src/webapps"
default['celery']['log_directory'] = "/var/log/celery"
default['celery']['log_path'] = "/var/log/celery/worker.log"
default['celery']['log_level'] = "INFO"