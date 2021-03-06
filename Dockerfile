FROM wyveo/nginx-php-fpm:php80
WORKDIR /usr/share/nginx/
RUN rm -rf /usr/share/ngix/html

#copy from root to container
COPY . /usr/share/nginx

RUN chmod -R 775  /usr/share/nginx/storage/*

#Create link simbolic
RUN ln -s public html

#RUN php artisan migrate
