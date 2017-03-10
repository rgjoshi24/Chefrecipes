package 'apache' do
  package_name 'httpd'
    action :install
end

service 'httpd' do
  action [:enable, :start]
end

file '/var/www/index.html' do
  action :delete
end

file '/var/www/html/index.html' do
  content 'Hello, this is my Webpage !'
  mode '0755'
  owner 'root'
  group 'apache'

end
