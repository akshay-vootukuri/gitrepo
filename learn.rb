package 'apache' do
	package_name'httpd'
end

service 'httpd' do
	action [:enable, :start]
end

file '/var/www/index.html' do
	action :delete
end

file '/var/www/html/index.html' do
	content 'Hello World'
	mode '0755'
	owner 'root'
	group 'apache'
end

file '/etc/motd' do
	content 'welcome to my server'
end

execute 'command-test' do
	command 'echo blah >> /etc/motd'
	only_if 'test -r /etc/motd'
end


