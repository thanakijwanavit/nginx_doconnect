server {
	listen 80;
	listen [::]:80;

	server_name saleor.healthexpress.app;

	# security
	include nginxconfig.io/security.conf;

	# reverse proxy
	location / {
		proxy_pass http://127.0.0.1:8000;
		include nginxconfig.io/proxy.conf;
	}

	# additional config
	include nginxconfig.io/general.conf;
}

# subdomains redirect
server {
	listen 80;
	listen [::]:80;

	server_name *.saleor.healthexpress.app;

	return 301 http://saleor.healthexpress.app$request_uri;
}
