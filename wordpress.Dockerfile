FROM wordpress:latest

RUN docker-php-ext-install pdo pdo_mysql
