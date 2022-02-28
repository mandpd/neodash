server {
    listen       5005;
    server_name  localhost;
    include      mime.types;
    location / {
        root   /usr/share/nginx/html;
        try_files $uri $uri/ /index.html;
        index  index.html index.htm;
    }
    # redirect server error pages to the static page /50x.html
    # Note: This is optional, depending on the implementation in React
    error_page   500 502 503 504  /50x.html;
    location = /50x.html {
        root   /usr/share/nginx/html;
    }
}