# BaseServiceUbuntuInstallScript
Auto install a base web server 


I created this script to simplify the installation of the most common packages I use for a web server.

I'm not a programming expert, it's just a hobby. Surely there are better ways to do this.


After installing php, edit the file /etc/nginx/nginx.conf :

 location / {
            root   html;
           index  index.php index.html index.htm;
           try_files $uri $uri/ /index.php?q=$request_uri; 
        }
        
  location ~ \.php$ {
             root           html;
             fastcgi_index  index.php;
             fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
             include        fastcgi_params;
             fastcgi_pass unix:/run/php/php7.0-fpm.sock;
        }     


